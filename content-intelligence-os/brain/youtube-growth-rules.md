# YouTube Growth Rules

How YouTube distribution actually works for small channels, and the rules this system derives from it. These rules govern scoring, packaging, and analysis decisions everywhere else in the system.

## The Distribution Model (working assumptions)

1. **YouTube is a recommendation engine, not a subscription feed.** For small channels, browse and suggested traffic are the growth engines. Search is a stabilizer, not a rocket.
2. **Every video gets a test.** YouTube shows new uploads to a small impression batch. Click-through rate (CTR) and average view duration (AVD) on that batch determine whether the next, larger batch happens. Low channel history means small first batches and little forgiveness.
3. **The algorithm optimizes for viewer satisfaction, proxied by clicks, watch time, and post-watch behavior.** We cannot game it long-term; we can only deserve distribution by making videos strangers choose and finish.
4. **Video-level performance dominates channel-level performance early.** One strong video can carry a small channel; but consistent weak videos teach the system to stop testing us.

## Rules Derived From the Model

### R1 — Impressions are earned by packaging; watch time is earned by the video
CTR problems and retention problems are different diseases with different cures. Never diagnose one as the other. Analysis must always separate them.

### R2 — The first 20 videos are an audition, not a library
Expect low absolute views. The metrics that matter: CTR ≥ 4% (proves packaging), AVD ≥ 40% (proves content), and any video that beats the channel's own trailing median (proves direction). Absolute view counts on a new channel measure luck more than quality.

### R3 — Suggested traffic is the endgame; design for it
Long-form documentary content grows primarily by appearing next to comparable videos. Therefore: cover topic territories where big-audience videos already exist (their audience is our target inventory), and match the *content quality expectations* of what we want to appear beside.

### R4 — Session thinking
YouTube rewards videos that start or extend sessions. End screens should point to our most-retentive video, not our newest. Never end a video with "that's it" energy — end with momentum into the next question.

### R5 — Upload timing matters less than upload readiness
For a channel under 10k subscribers, day/hour optimization is noise. Never delay a ready video for a "better slot"; never rush an unready one to hit a slot.

### R6 — Titles/thumbnails may be changed after publish
If a video's CTR is below 3% in its first 48 hours with meaningful impressions, a packaging swap is a legitimate, low-cost second chance. Log every swap and its effect in `memory/thumbnail-history.md` and `memory/title-history.md`.

### R7 — Do not chase shorts for a long-form documentary brand (initially)
Shorts audiences convert poorly to 15-minute documentaries, and shorts-heavy channels can confuse topic identity. Revisit only after long-form baseline is established (30+ videos), and only with shorts cut FROM long-form assets.

### R8 — Never delete underperformers
Old videos accrue search and suggested placements over months. Delete only for accuracy or brand-damage reasons. A "failed" video is a data point and a lottery ticket.

### R9 — Subscriber count is a lagging vanity metric early
Optimizing for subs before views is backwards. Views convert to subs at a roughly stable rate when content is consistent; fix views first.

### R10 — Consistency of identity beats consistency of schedule
The algorithm and audience need to learn what a click on our channel delivers. Ten videos of one clear format teach that; ten experiments teach nothing. Format experiments happen within the 6/3/1 allocation defined in `brain/content-strategy.md`.
