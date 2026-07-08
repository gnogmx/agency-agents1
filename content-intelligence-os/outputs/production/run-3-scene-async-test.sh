#!/usr/bin/env bash
# Nokia 3-scene ASYNC local production test.
# Run on the Mac that hosts the media pipeline. Safe: 3 scenes only, async,
# no /produce_blotato, no upload, no 50-scene run.
#
# Usage:
#   bash run-3-scene-async-test.sh
#
# It will: health-check the 3 services, refuse to run if a required one is down
# (telling you which), then POST the async job, poll until done/error, and
# download the MP4 to /tmp/nokia-3scene-test.mp4.

set -uo pipefail

MEDIA="http://localhost:8920"
COMFY="http://localhost:8188"
KOKORO="http://localhost:8880"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PAYLOAD="$SCRIPT_DIR/nokia-fastapi-test-3-scenes.json"
OUT="/tmp/nokia-3scene-test.mp4"

POLL_EVERY=10       # seconds between status polls
MAX_POLLS=120       # hard cap (=20 min) so it never loops endlessly

code() { curl -sS -o /dev/null -w '%{http_code}' --connect-timeout 3 --max-time 8 "$1" 2>/dev/null || echo 000; }

echo "== 1. Health checks =="
H_MEDIA="$(code "$MEDIA/health")"
H_COMFY="$(code "$COMFY/")"
H_KOKORO="$(code "$KOKORO/")"
echo "  media server ($MEDIA/health): HTTP $H_MEDIA"
echo "  ComfyUI      ($COMFY/):       HTTP $H_COMFY"
echo "  Kokoro       ($KOKORO/):      HTTP $H_KOKORO"

down=0
[ "$H_MEDIA"  = "000" ] && { echo "  -> media server DOWN. Start: cd /Users/gnog/ai-local/server && python3 -m uvicorn mac_media_server:app --host 127.0.0.1 --port 8920"; down=1; }
[ "$H_COMFY"  = "000" ] && { echo "  -> ComfyUI DOWN (this causes 'Connection refused'). Start it in its own terminal, e.g.: cd /Users/gnog/ai-local/ComfyUI && python3 main.py --port 8188"; down=1; }
[ "$H_KOKORO" = "000" ] && { echo "  -> Kokoro-FastAPI DOWN (this causes 'Connection refused'). Start it in its own terminal per its README (port 8880)."; down=1; }
if [ "$down" -ne 0 ]; then
  echo "== Aborting: start the DOWN service(s) above, then re-run this script. No job was submitted. =="
  exit 1
fi
echo "  All three services reachable."

[ -f "$PAYLOAD" ] || { echo "Payload not found: $PAYLOAD"; exit 1; }

echo "== 2. Submit async 3-scene job =="
START="$(date +%s)"
RESP="$(curl -sS -X POST "$MEDIA/produce_async" -H "Content-Type: application/json" --data-binary @"$PAYLOAD")"
echo "  raw response: $RESP"
JID="$(printf '%s' "$RESP" | python3 -c 'import sys,json
try:
    d=json.load(sys.stdin)
    print(d.get("job_id") or d.get("jid") or d.get("id") or "")
except Exception:
    print("")')"
if [ -z "$JID" ]; then
  echo "== Could not parse a job_id from the response above. Stopping. =="
  exit 1
fi
echo "  job_id: $JID"

echo "== 3. Poll status (every ${POLL_EVERY}s, max ${MAX_POLLS}) =="
STATUS=""
for i in $(seq 1 "$MAX_POLLS"); do
  J="$(curl -sS "$MEDIA/job/$JID" 2>/dev/null)"
  STATUS="$(printf '%s' "$J" | python3 -c 'import sys,json
try: print(json.load(sys.stdin).get("status",""))
except Exception: print("")')"
  echo "  [$i] status=$STATUS"
  case "$STATUS" in
    done|completed|success|finished) break ;;
    error|failed) echo "  full job payload: $J"; break ;;
  esac
  sleep "$POLL_EVERY"
done
END="$(date +%s)"
ELAPSED=$((END-START))

echo "== 4. Result =="
echo "  final status: ${STATUS:-unknown}"
echo "  elapsed: ${ELAPSED}s (~$((ELAPSED/60))m$((ELAPSED%60))s)"
case "$STATUS" in
  done|completed|success|finished)
    echo "  downloading result -> $OUT"
    curl -sSL "$MEDIA/job/$JID/result" -o "$OUT"
    if [ -s "$OUT" ]; then
      echo "  saved: $OUT ($(du -h "$OUT" | cut -f1))"
    else
      echo "  WARNING: result file empty or not returned."
    fi
    ;;
  error|failed)
    echo "  job errored. See the full job payload above and the media-server logs."
    ;;
  *)
    echo "  did not reach a terminal state within the poll cap. Re-check: curl -sS $MEDIA/job/$JID"
    ;;
esac

echo "== Done. No upload performed, no 50-scene run, /produce_blotato not called. =="
