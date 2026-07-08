# Content Intelligence OS

An operating system for building and growing YouTube channels from zero — starting with **Empire Laws**, a business documentary channel.

This is not a video generator. It is a repeatable intelligence system that **researches, scores, scripts, produces, publishes, and learns** from content performance. Its core bet: on a new channel, the scarce resource is not production capacity but *good decisions before production*. Every part of this system exists to kill weak ideas cheaply, package strong ideas properly, and convert every publish — win or lose — into a documented lesson.

## Why an OS, Not a Content Plan

New channels get very low initial views. That is expected, not a failure. What separates channels that break out from channels that stall is not luck volume — it is the rate at which they improve **topic selection, clickability (CTR), retention, and their own learning loop**. This repository encodes that improvement engine as files: rules, agents, workflows, and memory. No part of it promises virality; all of it raises the probability of earning distribution.

## Architecture

```
content-intelligence-os/
├── brain/        # System-wide rules. Non-negotiable law for every agent.
├── brands/       # Per-channel configuration. Tightens brain rules, never loosens them.
│   └── empire-laws/
├── agents/       # 10 specialist roles, pipeline-ordered (01 → 10).
├── workflows/    # The 4 standing processes that chain the agents.
├── memory/       # What the channel has learned. Written by analysis, read by research.
└── outputs/      # Working artifacts: ideas, scripts, storyboards, thumbnails, videos, analytics.
```

### The chain of command

1. **`brain/`** defines the rules: mission, operating principles, content strategy, audience modeling, storytelling, YouTube growth mechanics, thumbnails, titles, retention, analytics, and learning discipline.
2. **`brands/empire-laws/`** configures the first channel: brand definition, visual system, content pillars, competitor map, episode format, and hard forbidden patterns.
3. **`agents/`** execute within those rules:

| # | Agent | Owns |
|---|-------|------|
| 01 | Trend Hunter | Proven-demand topic discovery |
| 02 | Competitor Brain | Living model of the competitive field |
| 03 | Gap Finder | Winnable angles inside proven demand |
| 04 | Viral Predictor | Pre-production scoring + frozen, falsifiable predictions |
| 05 | Story Architect | Retention-engineered scripts |
| 06 | Design Director | Storyboards + visual-system enforcement |
| 07 | Production Director | Assembly line from locked script to QC'd master |
| 08 | Thumbnail Lab | Thumbnail concepts, execution, swap testing |
| 09 | Publisher | Final gate, metadata, launch watch |
| 10 | Learning Brain | Grading predictions, maintaining memory, auditing the system itself |

4. **`workflows/`** chain them: `daily-video-research` → `video-selection` → `script-production` → `post-publish-analysis` → (memory) → back to research.
5. **`memory/`** closes the loop: channel lessons, winning/failed patterns, complete title and thumbnail histories, and the master performance dataset. When memory contradicts a rule, a human reviews the evidence and updates the rule — the system evolves by audit, not by exception.

## The Core Loop

```
RESEARCH (daily)          SELECT (per slot)         PRODUCE (per video)        LEARN (per publish)
trends + competitors  →   score + head-to-head  →   script → board → cut  →    grade predictions
gaps + packaging          human green light         thumbnail + publish        write memory
        ▲                                                                          │
        └──────────────────── memory feeds the next research run ◄────────────────┘
```

Key mechanics that make the loop honest:
- **Packaging before scripting.** Titles (7+ candidates) and thumbnails (3+ concepts) are created and scored at idea stage. Unpackageable ideas die before costing production time.
- **Frozen scorecards.** Every produced video carries a written pre-publish prediction (CTR band, AVD band, pre-mortem). Predictions are graded against reality at 7 and 28 days — no post-hoc rationalization possible.
- **Two-disease diagnosis.** CTR problems (packaging) and retention problems (content) are diagnosed separately, always.
- **Evidence-gated patterns.** One result = candidate; two confirmations = pattern; twenty videos unconfirmed = demoted. External "best practices" enter as candidates only.
- **Cohort reviews.** Every 10 videos, the system audits its own scoring calibration and proposes rule changes from evidence.

## First Brand: Empire Laws

Business documentaries about how billion-dollar companies rise, dominate, make mistakes, and collapse — with one differentiator: **every episode extracts a transferable business law from the story.**

> Every empire is built on a law. Break it, and you fall.

Examples of the house takeaway: *Distribution beats product. Debt kills flexibility. Luxury is perception control. Platforms win by owning demand. Growth without discipline becomes collapse.*

See `brands/empire-laws/` for the full configuration: positioning and audience (`brand.md`), premium-dark visual identity (`visual-system.md`), four content pillars (`content-pillars.md`), the tiered competitor map (`competitors.md`), the 12–18 minute episode blueprint with its signature Law Card (`video-format.md`), and hard bans (`forbidden-patterns.md`).

## How to Start (day one with an empty channel)

1. Read `brain/mission.md` and `brain/operating-principles.md` — the contract everything else assumes.
2. Run `workflows/daily-video-research.md` for several days to fill `outputs/ideas/pipeline.md` with evidence-backed, gap-verified, pre-packaged candidates.
3. Run `workflows/video-selection.md` to commit video #1 — per cold-start rules, the highest-scoring proven-format idea, no experiments.
4. Run `workflows/script-production.md` through publish.
5. Run `workflows/post-publish-analysis.md` at 48h / 7d / 28d, and write the first entries into `memory/`.
6. Repeat. The system is working when video #10's research run reads ten videos' worth of lessons that video #1 never had.

## Adding a Second Brand

Copy the `brands/empire-laws/` file set as a template, redefine all six files for the new channel, and give it its own `memory/` namespace and `outputs/` tree. `brain/` rules apply unchanged; anything brand-specific belongs in the brand folder. A new brand should only be added once the workflows have proven themselves on Empire Laws through at least one full cohort review.
