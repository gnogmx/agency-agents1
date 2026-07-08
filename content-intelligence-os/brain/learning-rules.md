# Learning Rules

How this system converts results into improved future decisions. Learning is the only compounding asset a small channel controls completely.

## The Learning Loop

Every published video must complete this loop:

1. **Predict** — Before publish, the Viral Predictor's score and the specific reasons for it are frozen in the idea's scorecard (`outputs/ideas/`). No post-hoc rationalization is possible if the prediction is written down first.
2. **Measure** — At 48h, 7d, and 28d per `brain/analytics-rules.md`.
3. **Compare** — Actual vs. predicted. The GAP is the learning signal, in both directions: an unexpected win teaches as much as an unexpected loss.
4. **Attribute** — Name the variable most responsible for the gap (see analytics rules: one named variable, honest uncertainty).
5. **Write** — Update the relevant memory file(s). Unwritten lessons don't exist.
6. **Apply** — The next video's research and scoring must cite the newest relevant lessons. Memory files that are written but never read are decoration.

## Memory File Contracts

- `memory/channel-lessons.md` — durable, cross-cutting lessons about OUR channel and audience. Highest bar for entry: repeated evidence or one unambiguous result.
- `memory/winning-patterns.md` — patterns with 2+ confirmations that future videos should repeat. Each entry cites its evidence videos.
- `memory/failed-patterns.md` — patterns with 2+ confirmations to avoid, PLUS single-occurrence "candidate failures" clearly marked as provisional.
- `memory/title-history.md` / `memory/thumbnail-history.md` — complete logs, no curation. Raw material for pattern mining.
- `memory/video-performance.md` — one row per video, the master dataset.

## Rules of Evidence

1. **Two confirmations promote a candidate to a pattern.** One result creates a hypothesis; the system then deliberately tests it (usually via the 3 "adjacent bet" slots in the portfolio allocation).
2. **Patterns expire.** Every pattern entry gets a "last confirmed" date. A pattern unconfirmed for 20 videos gets demoted to candidate status — audience tastes and the platform drift.
3. **Negative knowledge is knowledge.** "Founder-biography framings underperform collapse framings for us" saves future production slots. Failed patterns get equal documentation rigor.
4. **Prediction calibration is itself tracked.** Every 10 videos, the Learning Brain reports: of ideas scored 8+, how many overperformed the channel median? If high scores don't predict outperformance, the scoring model is broken and must be revised — the scorecard weights are a living part of this system.

## When Lessons Conflict With Rules

Memory can contradict `brain/` rules — that's the system working. Procedure:
1. The Learning Brain flags the conflict explicitly ("Rule says X; videos A, B, C suggest not-X for us").
2. A human decides: revise the rule, or mark the results as insufficient evidence.
3. Rule changes are made in the rule file itself with a dated changelog line at the bottom, so the system's evolution is auditable.

## Anti-Patterns of Learning

- **Lesson inflation**: writing vague lessons ("quality matters") that can never be falsified. Every lesson must be specific enough that a future video could violate it.
- **Recency worship**: rewriting strategy after every single video. Cohort reviews (every 10 videos) change strategy; single videos change hypotheses.
- **Success-only mining**: studying wins and ignoring losses. Both directions of surprise get equal analysis.
- **Outsourced conviction**: importing another channel's "what worked for me" as OUR pattern without local confirmation. External patterns enter as candidates, never as confirmed patterns.
