# Workflow — Video Selection

The decision gate. Converts the research pipeline into a single production commitment. This is the highest-leverage 60 minutes in the system: a wrong choice here costs weeks of production; a right choice compounds the channel. Runs whenever a production slot opens (typically weekly).

## Precondition

- A current pipeline (`outputs/ideas/pipeline.md`) refreshed by the daily research workflow within the last 48 hours. Selecting from a stale pipeline is forbidden — signals expire.

## Sequence

### Step 1 — Slot definition (5 min)
Per the portfolio allocation in `brain/content-strategy.md` (6 proven / 3 adjacent / 1 wild per 10 videos), determine what KIND of slot this is, based on the running tally in `memory/video-performance.md`. The slot type constrains which candidates are eligible — this prevents the pipeline's most exciting wild idea from eating a proven slot.

### Step 2 — Scoring (Viral Predictor)
Run `agents/04-viral-predictor.md` on every eligible candidate not yet scored (or whose packaging was reworked since last scoring): hard gates, five weighted dimensions, falsifiable CTR/AVD predictions, pre-mortem.
- Output: frozen scorecards in `outputs/ideas/`

### Step 3 — Head-to-head (15 min)
Take the top 2–3 PRODUCE-verdict candidates for the slot type and compare directly:
- Which best title+thumbnail pair wins a synthetic feed test against current real competition?
- Which candidate's pre-mortem risk is least likely?
- Which does the most for the brand beyond its own views (pillar balance, law quality, suggested-feed adjacency)?
- Tie-breaker: the candidate whose demand evidence is FRESHEST.

### Step 4 — Human green light
The system presents its recommendation with the scorecard, the head-to-head reasoning, and the dissent (what the runner-up had that the winner lacks). A human approves, swaps for the runner-up, or rejects all. The system never green-lights itself (operating principle 10).

### Step 5 — Commitment record (5 min)
On approval:
- Mark the chosen idea COMMITTED in `outputs/ideas/pipeline.md` with slot type and date.
- The winning scorecard is now FROZEN (no edits, ever — learning integrity).
- Losing finalists stay in the pipeline with a note on why they lost (often they win a later slot).
- Open the production folder structure: `outputs/scripts/`, `outputs/storyboards/`, `outputs/thumbnails/[slug]/`, `outputs/videos/[slug]/` paths reserved.
- Hand off to the script-production workflow.

## Decision Rules

1. **No pipeline candidate above threshold → no production.** A skipped slot costs less than a produced flop (content-strategy cadence rule). Log the skip and its reason.
2. **Slot discipline**: a wild-bet candidate cannot take a proven slot no matter its score; scores are only comparable within a slot type (a wild bet scoring 7.5 carries different risk than a proven format scoring 7.5).
3. **Packaging veto**: if the best title/thumbnail pair for a candidate still fails the feed test at selection time, the candidate is a HOLD regardless of weighted score — packaging is the product.
4. **One commitment per session.** Batch-committing multiple videos locks future slots to today's information.
5. **Re-test flagging**: if the chosen candidate deliberately re-tests a failed or candidate pattern, that intent is written on the commitment record BEFORE production (so the result is interpretable either way).

## Outputs Summary

| Artifact | Location |
|---|---|
| Frozen scorecards | `outputs/ideas/` |
| Updated pipeline with COMMITTED entry | `outputs/ideas/pipeline.md` |
| Selection record (recommendation, dissent, human decision) | appended to the winning scorecard |

## Failure Modes to Watch

- **Score worship**: committing the highest number without the head-to-head. The score ranks; the comparison decides.
- **Sunk-research bias**: picking a candidate because its research took the longest.
- **Cadence panic**: lowering the threshold to fill a slot because "we need to upload." The threshold IS the strategy.
- **Selection drift**: informal mid-week swaps of the committed idea. A commitment is only reversed by re-running this workflow with a written reason.
