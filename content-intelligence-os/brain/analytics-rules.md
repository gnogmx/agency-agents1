# Analytics Rules

How this system reads numbers without fooling itself. These rules govern the Learning Brain agent and the post-publish workflow.

## The Metric Hierarchy (for a channel under 10k subscribers)

Read metrics in this order; each level only means something in the context of the level above:

1. **CTR (click-through rate)** — Did the packaging work? Only meaningful with ≥ 500 impressions. Judge against our channel's own trailing median, then against the 4% workable / 6% strong reference bands.
2. **AVD % (average view duration)** — Did the video deliver? See `brain/retention-rules.md` for thresholds.
3. **Retention curve shape** — WHERE did it fail or win? The most information-dense artifact we get per video.
4. **Impressions trajectory** — Is YouTube expanding or shrinking the test? Rising impressions in week 1–2 = the batch tests are passing.
5. **Traffic source mix** — Browse % rising over the first month is the health signal for long-term growth; search-heavy = stable but capped; suggested-heavy = check WHICH videos we appear beside (that's our real competitive set).
6. **Views, subs, likes** — outcomes, not diagnostics. Reported last, never analyzed first.

## Statistical Honesty Rules

1. **Small numbers lie.** No conclusions from < 500 impressions (CTR) or < 100 views (retention shape). Mark analyses on thin data as "provisional" in memory files.
2. **One video is an anecdote; three are a pattern.** No rule is written into `memory/winning-patterns.md` or `memory/failed-patterns.md` from a single video. One occurrence = "candidate pattern," logged and watched.
3. **Compare like with like.** A video's numbers are judged against: (a) our channel's trailing 10-video median, (b) videos of the same format/topic pillar. Never against a competitor's absolute numbers.
4. **Time-normalize.** Compare videos at the same age (48h, 7d, 28d snapshots). A 3-month-old video vs. a 3-day-old video is not a comparison.
5. **Name the variable.** Every performance delta gets attributed to a hypothesized variable (topic, title pattern, thumbnail device, hook structure, length). "It just worked" is a banned conclusion.
6. **Luck is real.** An outlier up or down may be an algorithm mood, a news cycle, or a big-video adjacency. Confidence in any lesson scales with repetition, not with the size of a single result.

## Mandatory Measurement Cadence

- **48 hours post-publish**: CTR check → packaging-swap decision (per growth rule R6).
- **7 days post-publish**: full retention analysis → `outputs/analytics/`, lessons drafted.
- **28 days post-publish**: final snapshot → `memory/video-performance.md` row finalized; patterns reviewed.
- **Every 10 videos**: cohort review — pattern files updated, strategy file re-read, at least one rule proposed for revision (or explicitly reaffirmed).

## Banned Analytical Behaviors

- Cherry-picking timeframes to make a video look successful.
- Diagnosing a CTR problem from a retention symptom or vice versa (they are different diseases — growth rule R1).
- Changing three variables after a flop; you learn nothing and risk breaking what worked.
- Deleting or hiding underperformers from analysis. Failures are the most instructive rows in `memory/video-performance.md`.
- Treating a subscriber spike as validation of the most recent video without checking traffic sources (spikes often come from an OLD video hitting suggested).
