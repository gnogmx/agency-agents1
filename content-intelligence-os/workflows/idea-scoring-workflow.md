# Workflow — Idea Scoring

The disciplined process that turns raw idea briefs into frozen, decision-ready scorecards. This is the checkpoint where weak ideas die cheaply and strong ideas get their weakest link fixed before a single production hour is spent. It sits between the daily research workflow (which fills the pipeline) and the video-selection workflow (which commits a slot).

**Purpose:** improve decision quality before production so a new channel stops burning weeks on low-view videos. It scores decisions, not destinies — no scorecard promises views.

## When It Runs

- On any batch of new angle briefs from `outputs/ideas/` (Gap Finder output).
- Before every video-selection session — selection can only choose among SCORED ideas.
- Re-run on any idea whose packaging (title/thumbnail) was reworked after a REVISE verdict.

## Inputs

- Angle briefs (`outputs/ideas/`) with topic, gap type, our angle, candidate law
- Draft packaging per idea: title candidates + thumbnail concepts
- `agents/04-viral-predictor.md` — the scoring agent
- `brain/opportunity-scoring-system.md` — the 100-point rubric
- `brands/empire-laws/forbidden-patterns.md` — the hard gate
- All relevant `memory/` files

## Sequence

### Step 1 — Batch intake & hard gates (5 min)
Pull the briefs to be scored. For each, run the hard gates FIRST:
- Violates `forbidden-patterns.md`? → auto-REJECT, logged, removed from batch.
- Zero demand evidence? → auto-REJECT, logged.
- No named gap type? → return to Gap Finder, not scored.

Ideas that fail a gate never get a score — a score would imply the idea was in the running. It wasn't.

### Step 2 — Packaging readiness check (5 min)
Confirm each surviving idea has draft titles (≥7 candidates per `brain/title-rules.md`) and thumbnail concepts (≥3 distinct devices per `agents/08-thumbnail-lab.md`). Score the packaging that EXISTS — an idea with no drafted packaging cannot earn Title/Thumbnail points and will score artificially low. If packaging is missing, generate it now or send the idea back; do not score a half-prepared idea.

### Step 3 — Score each idea (Viral Predictor)
Run `agents/04-viral-predictor.md` on every idea in the batch:
- Eight dimensions, evidence-justified.
- Sum to 0–100, map to decision band.
- Write all eleven verdict fields.
- Freeze the CTR/AVD prediction and pre-mortem.

One scorecard file per idea: `outputs/ideas/YYYY-MM-DD-scorecard-[slug].md`.

### Step 4 — Batch sanity pass (10 min)
Guard against inflation:
- If the batch average exceeds 80, RE-RANK the batch against itself and re-justify. Real batches have losers.
- Check that each score's weakest dimension is called out loudly (the weakest link is the headline, per the scoring system).
- Confirm no REJECT was softened into a REVISE to be kind.

### Step 5 — Route by decision band
- **90–100** → straight to the video-selection pipeline as PRODUCE-ready.
- **80–89** → apply the "how to improve" fix (title/hook/angle), then either re-score (Step 3) or forward with the fix noted as a production condition.
- **70–79** → hold in pipeline, tagged "conditional — needs a strategic reason."
- **60–69** → return to Gap Finder for repositioning; the topic may survive under a new angle.
- **Below 60** → REJECT. Record the reason in the kill log; the Learning Brain mines kill logs for `memory/failed-patterns.md`.

### Step 6 — Update the pipeline
Write every scored idea into `outputs/ideas/pipeline.md` with its score, band, slot-type eligibility, and (for holds) the strategic condition. Killed ideas leave the pipeline with a logged reason.

## Outputs

| Artifact | Location |
|----------|----------|
| One frozen scorecard per idea | `outputs/ideas/YYYY-MM-DD-scorecard-[slug].md` |
| Ranked, scored pipeline | `outputs/ideas/pipeline.md` |
| Kill log entries for rejects | appended to pipeline / `outputs/ideas/` |

## Rules

1. **Score before select, always.** The selection workflow may not commit an unscored idea.
2. **Freeze on approval.** Once an idea is committed to production, its scorecard is immutable — that is what lets the Learning Brain grade the prediction honestly later.
3. **The batch has losers.** If nothing scores below 70 in a batch of five, the scoring was too generous — re-run Step 4.
4. **Reject bluntly.** Below-60 ideas are told they are rejected and why. No cushioning. Politeness to bad ideas costs production slots.
5. **A weak batch is a valid outcome.** "Nothing scored high enough to produce this week" is a legitimate, logged result. Forcing a 68 into production to fill a slot is exactly the low-view trap this system exists to break.
6. **Re-scores are versioned, not overwritten.** A REVISE that comes back for scoring gets a new dated scorecard; the original stays as a record of the fix.

## Failure Modes to Watch

- **Inflation drift:** scores creeping up over weeks as the bar softens. The Step 4 sanity pass and the Learning Brain's calibration audit exist to catch this.
- **Packaging shortcuts:** scoring Title/Thumbnail on ideas that never had drafted packaging — producing artificially low, meaningless scores.
- **Gate leakage:** a forbidden-pattern idea getting scored instead of auto-rejected.
- **Kill-log neglect:** rejecting ideas without logging why — throwing away the cheapest lessons the system generates.
- **Score worship:** treating the number as the decision. The score ranks and gates; the selection workflow's head-to-head still decides between strong candidates.
