# Workflow — Daily Video Research

The standing intelligence routine that keeps the idea pipeline full of evidence-backed, gap-verified candidates. Runs daily (or each working session). Cost: ~30–60 minutes. This workflow produces DECISION MATERIAL, never production commitments.

## Cadence & Trigger

- Daily on working days; mandatory before any video-selection session.
- Weekly deep run (Mondays): includes the Competitor Brain's full report; daily runs use its most recent report.

## Sequence

### Step 1 — Memory refresh (5 min)
Read the newest entries in `memory/channel-lessons.md`, `memory/winning-patterns.md`, `memory/failed-patterns.md`. Today's research must know what the channel learned yesterday. Skipping this step invalidates the run (operating principle 8).

### Step 2 — Competitor Brain (weekly full / daily delta)
Run `agents/02-competitor-brain.md`.
- Weekly: full report (baselines, saturation map, packaging patterns, standing questions).
- Daily: delta scan only — new uploads by tracked channels, new outliers (≥ 3× channel median), packaging shifts.
- Output: `outputs/analytics/YYYY-MM-DD-competitor-report.md`

### Step 3 — Trend Hunter
Run `agents/01-trend-hunter.md` with today's competitor data: outlier sweep, news-hook sweep, evergreen-decay sweep, demand triangulation, pillar tagging, forbidden filtering.
- Output: `outputs/ideas/YYYY-MM-DD-trend-report.md` (5–15 candidates, evidence-graded)

### Step 4 — Gap Finder
Run `agents/03-gap-finder.md` on every strong/medium-evidence candidate: incumbent mapping, gap typing, angle definition, Tier-1-tomorrow stress test, memory cross-check.
- Output: `outputs/ideas/YYYY-MM-DD-angle-briefs.md` + kill log

### Step 5 — Early packaging pass (Thumbnail Lab + title drafts)
For each surviving angle brief: draft ≥ 7 titles (`brain/title-rules.md`) and ≥ 3 thumbnail concepts (`agents/08-thumbnail-lab.md`, idea stage). This happens NOW because unpackageable ideas must die before scoring, not after scripting (operating principle 2).
- Output: packaging drafts appended to each angle brief / `outputs/thumbnails/[slug]-concepts.md`

### Step 6 — Pipeline update (5 min)
Maintain `outputs/ideas/pipeline.md` — the ranked standing list of scored-or-awaiting-scoring ideas. Remove candidates invalidated by today's findings (topic just covered by a Tier 1, news hook expired) with reasons logged.

## Outputs Summary

| Artifact | Location |
|---|---|
| Competitor report/delta | `outputs/analytics/` |
| Trend report | `outputs/ideas/` |
| Angle briefs + kill log | `outputs/ideas/` |
| Packaging drafts | `outputs/thumbnails/`, appended briefs |
| Updated pipeline | `outputs/ideas/pipeline.md` |

## Rules

1. Research never green-lights production — that is exclusively the video-selection workflow's decision.
2. Every idea killed at any step is logged with a one-line reason (kill logs are pattern-mining input).
3. A day with zero surviving candidates is a VALID output. Recording "nothing worth making today" beats forcing a weak candidate into the pipeline.
4. News-hook candidates get a freshness expiry date in the pipeline; expired hooks are auto-killed.
5. If the pipeline holds ≥ 10 scored PRODUCE-verdict ideas, the daily run may compress to Steps 1–2 + pipeline maintenance.

## Failure Modes to Watch

- Research theater: long reports, no pipeline movement. The metric of this workflow is decision-ready ideas, not pages.
- Evidence decay: reusing week-old demand signals as if current.
- Enthusiasm capture: a researcher's favorite topic surviving steps it should have died in. The stress tests exist to kill OUR darlings, not just competitors'.
