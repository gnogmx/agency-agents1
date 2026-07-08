# Run Guide — Nokia 3-Scene Local Production Test

Run this **on your Mac** (where the media pipeline lives), from the repository root, with the payload at `outputs/production/nokia-fastapi-test-3-scenes.json`. `localhost` must resolve to your Mac — this cannot be run from a remote/cloud session.

## 1. What this test does

Sends the first **3 scenes** of the Nokia episode to the local `/produce` endpoint to confirm the pipeline works end to end on a small job: generates one image per scene (Flux via ComfyUI), animates each into a short motion clip (LTX), generates narration (Kokoro-FastAPI, voice `am_adam`), transcribes for subtitles (mlx-whisper), and assembles a short MP4 with FFmpeg. It is a plumbing/quality check before committing to the full episode.

## 2. What it does NOT do

- Does NOT run the full 50-scene episode.
- Does NOT publish or upload anything to YouTube.
- Does NOT change narration, image prompts, or animation prompts.
- Does NOT clear the fact-check publication gate. Produce ≠ publish.

## 3. Required local services

| Service | Port / requirement |
|---|---|
| FastAPI media server (`/produce`) | http://localhost:8920 |
| ComfyUI (Flux image generation) | http://localhost:8188 |
| Kokoro-FastAPI (narration TTS) | http://localhost:8880 |
| mlx-whisper (subtitles) | installed on PATH |
| ffmpeg (assembly) | installed on PATH |

## 4. Confirm the services are running

```bash
# FastAPI media server (expect an HTTP code, not 000)
curl -sS -o /dev/null -w "media server: HTTP %{http_code}\n" http://localhost:8920/produce

# ComfyUI
curl -sS -o /dev/null -w "comfyui:      HTTP %{http_code}\n" http://localhost:8188/

# Kokoro-FastAPI
curl -sS -o /dev/null -w "kokoro:       HTTP %{http_code}\n" http://localhost:8880/

# Tools on PATH
command -v mlx_whisper && echo "mlx-whisper: OK"
command -v ffmpeg && ffmpeg -version | head -1
```

If the media server returns `HTTP 000` / "Couldn't connect", it is not running — start it first (your usual launch command for the FastAPI app on port 8920), then re-check.

## 5. Run the 3-scene payload

From the repository root:

```bash
time curl -sS -X POST http://localhost:8920/produce \
  -H "Content-Type: application/json" \
  --data-binary @outputs/production/nokia-fastapi-test-3-scenes.json \
  -o /tmp/nokia-3scene-response.json \
  -w "\nHTTP %{http_code}\n"
```

## 6. Save / view the response

The command above already saves the body to `/tmp/nokia-3scene-response.json`. View it with:

```bash
cat /tmp/nokia-3scene-response.json
```

## 7. What to copy back after the run

Paste these five things:

1. **HTTP status** — the `HTTP <code>` line printed by curl.
2. **Response body** — the full output of `cat /tmp/nokia-3scene-response.json`.
3. **Output MP4 path** — the file path the server returns (if any).
4. **Approximate render time** — the `real` time from the `time` command.
5. **Server errors** — any error text in the response body or your server logs.

## 8. Warnings

- **Do NOT run the 50-scene full payload yet.** This is a 3-scene test only.
- **Do NOT publish or upload.** This is local generation only; no YouTube step.
- Review the 3 output scenes for quality (style, motion, narration, subtitle sync) before scaling up.
