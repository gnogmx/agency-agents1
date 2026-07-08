# Workflow — Post-Publish Analysis

The learning loop's execution path. Every published video passes through this workflow at fixed checkpoints; every tenth video triggers the cohort review. This workflow is what makes the system an intelligence system instead of a content mill — skipping it turns every earlier stage into guesswork.

## Checkpoints

| When | What | Who |
|---|---|---|
| T+48h | Launch verdict + swap decision | Publisher (already done in launch watch) |
| T+7d | Full first analysis | Learning Brain |
| T+28d | Final snapshot + row finalization | Learning Brain |
| Every 10 videos | Cohort review | Learning Brain + human |

## Sequence — T+7d Analysis

### Step 1 — Data pull
Collect: impressions trajectory, CTR, AVD, full retention curve, traffic-source mix, and the suggested-feed neighbors (which videos we appear beside — our real competitive classification).

### Step 2 — Prediction grading
Run `agents/10-learning-brain.md` per-video process: actual vs. FROZEN scorecard bands. Classification: as-predicted / overperformed / underperformed. Thin-data caveats per `brain/analytics-rules.md` (≥ 500 impressions for CTR conclusions, ≥ 100 views for retention shape).

### Step 3 — Two-disease diagnosis
- **Packaging verdict** from impressions + CTR (vs. trailing median).
- **Content verdict** from the retention curve: cliffs/spikes located by timestamp, each mapped to the beat map to name what was on screen.
- The two verdicts are written independently (growth rule R1). Cross-check the QC report's known compromises before attributing anything to the idea or script.

### Step 4 — Attribution
One named variable per surprise, with confidence level and missing evidence stated. "It just worked/failed" is banned output.

### Step 5 — Memory writes (mandatory to complete the workflow)
- `memory/video-performance.md`: row updated with 7d actuals.
- `memory/title-history.md` + `memory/thumbnail-history.md`: entries completed with outcome data and verdicts.
- `memory/winning-patterns.md` / `memory/failed-patterns.md`: candidate patterns logged (1 occurrence), promotions/demotions applied (2+).
- `memory/channel-lessons.md`: only if a durable cross-cutting insight emerged.

### Step 6 — One directive
The analysis ends with exactly ONE "action for next video" directive, carried into the next daily-research and selection runs.

## Sequence — T+28d Finalization

1. Final metric snapshot; the `video-performance.md` row is FINALIZED (later data may be appended, never rewritten).
2. Traffic-source retrospective: did browse share grow (health signal)? Did suggested placements land beside the intended neighbors?
3. Any 7d conclusion overturned by 28d data is corrected IN the memory files with a dated correction note — corrections are visible, not silent.

## Sequence — Cohort Review (every 10 videos)

1. **Calibration audit**: did scores ≥ 7.5 beat the trailing median more often than lower scores? If not, the Viral Predictor's weights are revised (proposal → human approval).
2. **Pattern lifecycle**: expirations (unconfirmed for 20 videos → demoted), graduations (2× confirmed brand-damaging → proposed for `forbidden-patterns.md`).
3. **Rule conflict report**: every place the data now contradicts a `brain/` or `brands/` rule, presented for human decision. Approved changes are edited into the rule files with dated changelog lines.
4. **Strategy review**: pillar performance comparison; portfolio allocation (6/3/1) adjustment proposal; `brain/content-strategy.md` re-read and revised per its own trigger.
5. **Format review**: runtime band, structure timings, and signature elements checked against 10 videos of retention evidence (`brands/<brand>/video-format.md`).

## Rules

1. **No video is exempt** — flops especially. The worst-performing video of a cohort gets the deepest analysis, not the shallowest.
2. **Predictions are graded as frozen.** Any sign of scorecard editing voids the video's learning data and is escalated.
3. **Both surprise directions get equal rigor.** An unexplained overperformance left unstudied is a wasted gift.
4. **Memory writes are the deliverable.** An analysis PDF nobody encoded into memory files did not happen (learning rule: unwritten lessons don't exist).
5. **Corrections are visible.** Memory files are append-and-annotate, never silently rewritten.

## Failure Modes to Watch

- **Checkpoint slippage**: analyses drifting weeks late, after which retention detail and context are cold. Calendar the checkpoints at publish time.
- **Winner's autopsy bias**: deep-diving hits and waving off flops (or the reverse).
- **Directive pileup**: issuing five actions per video. One directive per analysis — the next video can only cleanly test one change (operating principle 6).
- **Cohort skip**: postponing the 10-video review during busy stretches. The review IS the system maintaining itself; skipping it is how scoring models rot.
