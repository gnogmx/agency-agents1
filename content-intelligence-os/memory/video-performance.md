# Video Performance — Empire Laws (Master Dataset)

One row per published video. The system's ground truth. Rows are OPENED at publish (with frozen predictions), updated at T+48h/T+7d, FINALIZED at T+28d, and never rewritten — later corrections are appended as dated notes. Owner: Publisher (opens rows), Learning Brain (completes and finalizes).

## Rules of This File

1. **Predictions before data**: the predicted columns are filled from the frozen scorecard at publish time. A row opened after data arrives is corrupted for learning purposes and must be marked as such.
2. **No deletions**: flops stay. They are the most instructive rows (analytics rule: never hide underperformers).
3. **Time-normalized comparisons only**: compare videos at matched ages (48h/7d/28d snapshots), against the channel's trailing 10-video median — never against competitors' absolute numbers.
4. **Derived medians**: the trailing median CTR and AVD% are recomputed after each finalized row; they are the baseline every agent means by "our median."

## Master Table

| # | Slug | Title | Pillar | Slot type | Published | Pred. CTR | Pred. AVD% | 48h CTR | 48h AVD% | 7d CTR | 7d AVD% | 7d views | 28d CTR | 28d AVD% | 28d views | vs. trailing median | Verdict | Attributed variable |
|---|------|-------|--------|-----------|-----------|-----------|------------|---------|----------|--------|---------|----------|---------|----------|-----------|---------------------|---------|---------------------|
| — | — | *(first row opens at first publish)* | — | — | — | — | — | — | — | — | — | — | — | — | — | — | — | — |

Column notes:
- **Slot type**: proven / adjacent / wild (from the selection workflow) — scores and outcomes are only comparable within a slot type.
- **vs. trailing median**: above / at / below, computed at 28d on views AND separately noted for CTR and AVD if they diverge (they often do — that divergence is the diagnosis).
- **Verdict**: as-predicted / overperformed / underperformed (the Learning Brain's prediction grade).
- **Attributed variable**: the ONE variable credited for any surprise (topic / title pattern / thumbnail device / hook / structure / length / external event), with confidence in the linked analysis file.

## Extended Records

Each row links to its full artifacts:

```
### [#] [slug]
- Scorecard: outputs/ideas/[file] (FROZEN)
- Launch log: outputs/analytics/[slug]-launch-log.md
- Analyses: outputs/analytics/[slug]-analysis.md (7d, 28d)
- Retention events: [timestamp → beat → cliff/spike → named cause]
- Traffic mix @28d: browse __% / suggested __% / search __% / external __%
- Suggested-feed neighbors observed: [channels/videos we appeared beside]
- Corrections: [dated notes, if any 7d conclusion was overturned at 28d]
```

## Channel Baselines (recomputed each finalized row)

- Trailing 10-video median views (28d): *(needs ≥ 3 finalized rows to compute; ≥ 10 to be stable)*
- Trailing median CTR: *(pending first data)*
- Trailing median AVD%: *(pending first data)*
- Slot-type medians (proven / adjacent / wild): *(pending; meaningful from ~video 10)*

## Cohort Markers

Every 10th finalized row triggers the cohort review (`workflows/post-publish-analysis.md`). Mark them here:

- Cohort 1 (videos 1–10): pending — review due when row 10 finalizes
