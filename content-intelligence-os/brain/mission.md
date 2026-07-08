# Mission

## What This System Is

The Content Intelligence OS is a decision-making operating system for building YouTube channels from zero. It exists to answer one question before any money or time is spent on production:

**"Is this specific video, with this specific title and thumbnail, the best possible use of our next production slot?"**

Everything else — research agents, scoring models, memory files, workflows — exists to answer that question with increasing accuracy over time.

## What This System Is Not

- It is not a video generator. Producing more videos is easy. Producing videos that a cold audience clicks and watches is the hard problem.
- It is not a virality machine. No system can guarantee a viral video. What a system CAN do is raise the floor (fewer wasted productions) and raise the probability of outliers (more shots taken on well-scored ideas).
- It is not a content calendar. A calendar tells you *when* to publish. This system decides *what deserves to exist at all*.

## The Core Problem We Solve

New channels face a brutal cold-start reality:

1. **Zero authority**: YouTube has no data on the channel, so early impressions are scarce and unforgiving.
2. **Zero subscriber cushion**: Every view must be earned from browse/suggested/search — from strangers.
3. **High cost per experiment**: A documentary-style video costs 20–60 hours. Each flop burns weeks.
4. **Noisy feedback**: With 200 views, it is hard to tell signal from luck.

The system's answer: **move the failure earlier and make it cheaper.** Kill weak ideas at the research stage (cost: minutes), not after publishing (cost: weeks). Test titles and thumbnails as concepts before production. Extract a lesson from every publish, win or lose.

## Operating Definition of Success

Phase 1 (video 1–20): Success = learning velocity. Every video must produce a documented lesson in `memory/`. View counts are data, not verdicts.

Phase 2 (video 20–50): Success = repeatable click-through above 4% and average view duration above 40% on the formats we've kept.

Phase 3 (video 50+): Success = the channel's median video outperforms its own trailing median. The system is compounding.

## Chain of Command

1. `brain/` files define non-negotiable rules. Agents may not override them.
2. `brands/<brand>/` files define brand-specific constraints. They may tighten brain rules, never loosen them.
3. `agents/` execute within those constraints and write results to `outputs/`.
4. `memory/` records what happened. When memory contradicts a rule, a human reviews and updates the rule — rules evolve through evidence, not exceptions.

## First Brand

Empire Laws — a business documentary channel. See `brands/empire-laws/`. The system is built to be multi-brand, but every capability must first prove itself on Empire Laws.
