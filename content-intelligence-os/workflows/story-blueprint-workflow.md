# Workflow — Story Blueprint

The process that converts an approved, scored idea into a locked story blueprint — the architecture the script will later be written against. It sits between the video-selection workflow (which commits a slot) and the script-production workflow (which writes narration and produces the episode). **No narration and no production code are created here.** The deliverable is structure.

**Purpose:** win retention before writing. Structural mistakes fixed at the blueprint stage cost an afternoon; the same mistakes fixed after a script exists cost a rewrite. This workflow forces the story's architecture to be right before a single line is drafted.

## When It Runs

- Immediately after an idea is COMMITTED in the video-selection workflow and its scorecard is frozen.
- Before the script-production workflow may begin. Scripting on an unlocked blueprint is forbidden.

## Inputs

- The frozen scorecard (`outputs/ideas/`) — winning title, thumbnail concept, candidate Empire Law, pre-mortem, flagged retention risk
- `agents/05-story-architect.md` — the agent that produces the blueprint
- `brain/story-architecture-system.md` — the nine-section structure and rules
- `brain/storytelling-rules.md`, `brain/retention-rules.md`
- `brands/empire-laws/video-format.md`, `brand.md`, `forbidden-patterns.md`
- Research corpus: primary and reputable secondary sources for the story

## Sequence

### Step 1 — Research skeleton (before architecture)
Assemble the load-bearing facts: dates, numbers, named decisions, documented culture and strategy. Each fact gets a source or a flag to verify at scripting. The architect builds only on facts that can be defended — this is a documentary channel; unsourced claims about real companies and people are a channel-level risk.

### Step 2 — Find the contradiction and spine (Story Architect)
Run `agents/05-story-architect.md` to establish: core contradiction, story thesis, viewer promise, main question, emotional engine, stakes, forces/characters, and the timeline spine (raw chronology, kept separate from telling order).
- Gate: if no genuine contradiction exists, STOP and flag the idea — it may have been over-scored on Curiosity Gap. Do not architect a story with no mystery.

### Step 3 — Design the loops
Map retention loops, open loops (with the section each opens in), and payoff moments (with the section each closes in). Confirm the main question opens in the Cold Open and pays off by the Collapse Point.
- Gate: every open loop must have a designated payoff. An unresolved loop is a structural leak that returns here, not to scripting.

### Step 4 — Architect the nine sections
Build all nine sections, each with its seven required fields (Purpose, Viewer question, Key beat, Visual metaphor, Suggested on-screen text, Retention device, Transition). Honor the fixed durations.
- Verify the title/thumbnail promise is paid at or before the Collapse Point.
- Verify Section 5 carries a real internal cause (culture/speed/fear/debt/bureaucracy/blindness), not just "a competitor appeared."

### Step 5 — Run the guard checks
- **Biography check:** remove the dates — does it still work as a strategic argument? If not, rebuild.
- **Enemy check:** is the external disruptor a catalyst (correct) or the protagonist (failed)?
- **Contempt check:** is the company framed as stupid (banned) or as smart-but-unable-to-act (correct)?
- Populate "lines to use on screen" and "lines to ban."

### Step 6 — Human approval → LOCK
Present the blueprint with its retention-risk assessment. A human approves, requests structural changes, or rejects. Only an approved blueprint is marked LOCKED and unlocks the script-production workflow. A locked blueprint's structure is not silently changed during scripting — structural changes come back through this workflow.

## Outputs

| Artifact | Location |
|----------|----------|
| Locked story blueprint | `outputs/storyboards/[slug]-story-blueprint.md` |
| Source flags for scripting | inside the blueprint (facts to verify) |

## Rules

1. **Structure before script.** No narration is written until the blueprint is locked.
2. **Curiosity order, not chronology.** A blueprint sequenced by year fails Step 5 and is rebuilt.
3. **Every loop closes.** Unresolved open loops block the lock.
4. **The internal cause is mandatory.** An episode whose only explanation is "a rival beat them" has no Section 5 and is not lockable.
5. **No contempt.** The company is smart and still fell — that is the frame. Blueprints that call the subject stupid are rejected.
6. **Locked means locked.** Structural change requires re-running this workflow, not an edit during scripting.

## Failure Modes to Watch

- **Script creep:** the architect starts drafting narration paragraphs. The blueprint designs structure; catch and redirect.
- **Chronology relapse:** the sections quietly become a timeline. The biography check exists to catch this.
- **Enemy takeover:** the external disruptor eats the middle of the episode. Section 5 must return the focus inside the company.
- **Loop leaks:** a compelling early question that never pays off, leaving the viewer cheated.
- **Weak law:** a generic moral standing in for a specific, transferable Empire Law — the Law Card is the brand, and a soft law fails the episode.
