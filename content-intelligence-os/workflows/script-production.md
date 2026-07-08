# Workflow — Script Production

From COMMITTED idea to a published video. This workflow chains the Story Architect, Design Director, Thumbnail Lab, Production Director, and Publisher, with locked handoffs so downstream work never relitigates upstream decisions. Typical wall-clock: 1–3 weeks per episode for a documentary format.

## Precondition

- A COMMITTED idea with a frozen scorecard (from the video-selection workflow), including the final title and winning thumbnail concept.

## Sequence

### Step 1 — Script (Story Architect)
Run `agents/05-story-architect.md`: research pass with source ledger, spine identification, beat map before prose, promise-payment verification, full draft, delete test.
- Gate: **human script approval** → status LOCKED.
- If research reveals the story lacks a climax scene or the candidate law doesn't hold: STOP and return to selection with findings — do not write around a hollow spine. This early kill is cheap; discovering it in the edit is not.
- Output: `outputs/scripts/[slug]-script.md` (LOCKED)

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
| Script | `outputs/scripts/[slug]-script.md` (LOCKED, with beat map + source ledger) |
| Storyboard | `outputs/storyboards/[slug]-storyboard.md` |
| Thumbnails | `outputs/thumbnails/[slug]/` (final + swap + notes) |
| Video | `outputs/videos/[slug]/` (master, captions, QC report) |
| Launch | `outputs/analytics/[slug]-launch-log.md` + performance row opened |

## Failure Modes to Watch

- **The improving edit**: quality-motivated structural drift during production — the most common way documentary teams destroy their own retention engineering.
- **Rights optimism**: proceeding on "probably fine" assets. The line stops at Step 2 for a reason.
- **Parallel-stage skew**: thumbnail executed from the concept while the video drifted from it. The Publisher's final gate checks promise alignment between the actual cut and the actual thumbnail.
- **Approval fatigue**: humans rubber-stamping the script gate. The script gate is where a 30-hour production mistake costs 30 minutes to prevent.
