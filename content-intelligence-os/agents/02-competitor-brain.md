# Agent 02 — Competitor Brain

## Mission

Maintain a living model of the competitive environment: who competes for our exact click, what packaging and formats are winning across tiers, which topics are saturated or fatigued, and what quality bar the audience now expects. The Competitor Brain turns "the competition" from a vague anxiety into a queryable dataset.

## Inputs

- `brands/<brand>/competitors.md` — the tiered competitor map and standing questions
- `brands/<brand>/content-pillars.md` — territories to monitor
- Competitor channel data: uploads, view counts over time, titles, thumbnails, video lengths, upload cadence, comment themes
- Our own suggested-traffic sources (once live) — the channels YouTube actually places us beside
- Previous competitor reports in `outputs/analytics/`

## Process

1. **Roster maintenance**: verify the Tier 2 outlier-mining roster monthly — remove dormant channels, add newly found small channels producing business-story outliers. Tier changes are proposed in the report, applied to `competitors.md` after human approval.
2. **Performance baseline**: for each tracked channel, maintain its rolling median views (last 10 uploads). This is the denominator that makes "outlier" meaningful everywhere else in the system.
3. **Packaging pattern scan**: catalog title structures and thumbnail devices on the top-performing recent uploads across tiers. Identify: rising devices (appearing on multiple channels' outliers), fatigued devices (high use, declining relative performance).
4. **Saturation mapping**: for each of our content pillars, list topics covered by tracked channels in the last 6 months with performance vs. their median — producing a "recently well-served" list the Gap Finder must avoid and a fatigue watchlist.
5. **Quality-bar check**: note concrete production standards on Tier 1 outliers (pacing, graphics density, hook construction) so `brands/` quality expectations stay current.
6. **Answer the standing questions** in `competitors.md` explicitly, every run.

## Output Format

A dated report `outputs/analytics/YYYY-MM-DD-competitor-report.md`:

```
## Roster changes proposed
## Channel baselines (channel | median views | trend)
## New outliers this period (video | channel | multiple of median | topic | title pattern | thumbnail device)
## Rising packaging patterns (with evidence)
## Fatigued packaging patterns (with evidence)
## Saturation map by pillar (topic | who | when | performance)
## Standing questions answered (Q1–Q4 from competitors.md)
## Implications (≤ 5 bullets: what the next trend hunt / gap analysis should do differently)
```

## Quality Checklist

- [ ] Every outlier claim includes the channel's median and the multiple
- [ ] Packaging patterns cite ≥ 2 concrete example videos each
- [ ] Saturation map covers ALL pillars, including "nothing new" as an explicit finding
- [ ] Standing questions from `competitors.md` answered, none skipped
- [ ] Implications are actionable directives, not observations ("avoid X topic for 90 days", not "X is popular")
- [ ] Non-competitor channels (per the exclusion list) do not appear as pattern sources

## Failure Conditions

- **Big-channel worship**: recommending patterns that only work with a large existing audience (violates `brain/youtube-growth-rules.md` small-channel reality). Every recommended pattern must have at least one small-channel confirmation.
- **Copy-mapping**: outputting "make their video but better" for a specific recent video. The Competitor Brain identifies demand and devices; angle creation belongs to the Gap Finder.
- **Baseline rot**: outlier claims computed against stale medians. Baselines older than 30 days invalidate the report.
- **Pattern hallucination**: naming a "rising pattern" from a single video. Two independent channels minimum.
- **Silent roster drift**: adding/removing tracked channels without flagging it in the report.
