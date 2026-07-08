# Workflow — Script Production

From COMMITTED idea to a published video. This workflow chains the Story Architect, Design Director, Thumbnail Lab, Production Director, and Publisher, with locked handoffs so downstream work never relitigates upstream decisions. Typical wall-clock: 1–3 weeks per episode for a documentary format.

## Precondition

- A COMMITTED idea with a frozen scorecard (from the video-selection workflow), including the final title and winning thumbnail concept.
- A LOCKED story blueprint (from the story-blueprint workflow, `outputs/storyboards/[slug]-story-blueprint.md`). Scripting does not begin without it.

## Sequence

### Step 1 — Script (Story Architect + Scriptwriting System)
The script stage is not a single draft — it is a gated sequence, run per `workflows/episode-script-workflow.md` and `brain/scriptwriting-system.md`. All six gates must pass before the script is LOCKED:

1. **Locked story blueprint** — confirm the blueprint (`outputs/storyboards/[slug]-story-blueprint.md`) is LOCKED. The script realizes the blueprint's structure; it does not re-architect it. If research reveals the story lacks a climax scene or the candidate law doesn't hold, STOP and return to selection — do not write around a hollow spine.
2. **Draft narration** — write the full script against the 9 canonical sections, keeping the three layers (narration / on-screen text / visual direction) visually separate, at the committed runtime and ~150 wpm. → `outputs/scripts/[slug]-script-v1.md`.
3. **Fact-check ledger** — as the draft is written, log every specific claim (number, date, quote, acquisition amount, memo, market share, prototype, executive claim, research finding) in `outputs/scripts/[slug]-fact-check-ledger.md` with status, evidence needed, risk level, source type, and notes.
4. **Claim risk review** — cross-check that every specific in the script has a ledger row; assign statuses and risk levels; flag every High-risk claim about real people/companies for mandatory external verification; confirm each "Remove if not verified" claim has a named fallback.
5. **Rewrite pass** — align narration phrasing to each claim's ledger status (hedge unverified claims; no "this proves" without a verifiable entry; no contempt for the subject; enemy stays a catalyst); apply the delete test to hit runtime.
6. **Human approval** — a reviewer approves the script + ledger together, confirming the hook works, the layers are clean, the runtime is real, and every High-risk claim is flagged. Approval → status LOCKED.

- **Gate:** LOCKED requires all six steps. Producing to publish still requires the ledger's High-risk and "Needs external verification" rows cleared before the Publisher goes live — approval to produce is not approval to publish unverified specifics.
- Output: `outputs/scripts/[slug]-script-v1.md` (LOCKED) + `outputs/scripts/[slug]-fact-check-ledger.md`

### Step 2 — Storyboard (Design Director)
Run `agents/06-design-director.md` on the locked script: beat-to-visual mapping, interrupt audit, chart specs, signature moments, rights pass, asset production list.
- Gate: zero unresolved rights flags. Rights uncertainty stops the line here, where it's cheap.
- Output: `outputs/storyboards/[slug]-storyboard.md`

### Step 3 — Thumbnail execution (Thumbnail Lab, production stage)
Run `agents/08-thumbnail-lab.md` production stage in parallel with Step 4: full-quality final of the frozen winning concept + full-quality swap candidate, final feed/glance/mode checks.
- Output: `outputs/thumbnails/[slug]/final.png`, `swap.png`, `notes.md`

### Step 4 — Production (Production Director)
Run `agents/07-production-director.md`: narration record (cold open last), asset build (signature moments first), assembly to beat map, sound, grade, fresh-eyes QC.
- Gate: QC report pass with all deviations documented in "known compromises."
- Output: `outputs/videos/[slug]/` package + QC report

### Step 5 — Publish (Publisher)
Run `agents/09-publisher.md`: final gate (veto power), metadata build, configuration, publish, prediction snapshot into `memory/video-performance.md`, 48-hour launch watch, swap decision at 48h.
- Output: `outputs/analytics/[slug]-launch-log.md` → hands off to post-publish analysis workflow

## Locked-Handoff Rules

1. **LOCKED means locked.** Post-lock script changes require the Story Architect and re-approval; production-stage structural edits are forbidden (Production Director failure conditions).
2. **Problems travel upstream as flags, not as silent fixes.** The Design Director flags script issues; the Production Director documents compromises; nobody quietly patches someone else's stage — silent fixes corrupt post-publish attribution.
3. **The packaging is immutable after commitment.** Title and thumbnail concept were the scored bet. If production reality breaks the promise (a claimed scene can't be sourced), the packaging is formally re-scored — never quietly adjusted at upload.
4. **Every stage reads its brand files fresh** (`video-format.md`, `visual-system.md`, `forbidden-patterns.md`) — rules may have changed since the last episode via cohort review.

## Schedule Discipline

- The cold open and the climax get schedule priority; trim scope anywhere else first (interrupt density in mid-video sections can flex; the first 30 seconds cannot).
- A slipping episode ships late rather than under-QC'd (growth rule R5: readiness beats timing).

## Outputs Summary

| Stage | Artifact |
|---|---|
| Script | `outputs/scripts/[slug]-script-v1.md` (LOCKED) + `outputs/scripts/[slug]-fact-check-ledger.md` |
| Storyboard | `outputs/storyboards/[slug]-storyboard.md` |
| Thumbnails | `outputs/thumbnails/[slug]/` (final + swap + notes) |
| Video | `outputs/videos/[slug]/` (master, captions, QC report) |
| Launch | `outputs/analytics/[slug]-launch-log.md` + performance row opened |

## Failure Modes to Watch

- **The improving edit**: quality-motivated structural drift during production — the most common way documentary teams destroy their own retention engineering.
- **Rights optimism**: proceeding on "probably fine" assets. The line stops at Step 2 for a reason.
- **Parallel-stage skew**: thumbnail executed from the concept while the video drifted from it. The Publisher's final gate checks promise alignment between the actual cut and the actual thumbnail.
- **Approval fatigue**: humans rubber-stamping the script gate. The script gate is where a 30-hour production mistake costs 30 minutes to prevent.
