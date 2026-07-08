# Scriptwriting System

The system that turns a LOCKED story blueprint (`agents/05-story-architect.md` → `outputs/storyboards/`) into a full, production-ready narration script. It governs how words are written for an Empire Laws episode: the voice, the sentence discipline, the retention cadence, and — critically — the fact-control rules that keep a documentary channel honest and safe.

This system writes narration. It does NOT design structure (that is the locked blueprint's job), produce motion-graphics/Remotion code, or generate thumbnails. It writes the words a narrator will record and specifies, alongside each block, the on-screen text and visual direction the Design Director will later build.

## What a Script Must Be

A finished script is strong enough to record as voiceover **after fact review** — no rewriting at the mic. It reads as spoken language, not written prose. It carries the retention engineering of the blueprint into actual sentences. And every specific claim in it is traceable to the fact-check ledger.

## The Three Layers (kept visually separate, always)

Every section of every script separates three layers so no one at the production stage has to guess what is spoken vs. shown vs. built:

1. **Narration** — the exact words the narrator says. Nothing else. This is the only layer that gets recorded.
2. **On-screen text** — the short typographic lines that appear on screen (≤ ~6 words, per `brands/empire-laws/visual-system.md`). Never a transcript of the narration; it punctuates, it doesn't echo.
3. **Visual direction** — what the viewer sees (archival, charts, metaphor shots, motion). Instructions for the Design Director, not final code.

A script that blends these layers into one paragraph is not production-ready and is returned.

## Voice & Tone (Empire Laws)

Cinematic, intelligent, sharp, dramatic, strategic, premium. In practice, the narration sounds like a strategist telling you something few people understand — calm, certain about what is known, honest about what isn't.

## Narration Rules (binding)

1. **Short spoken sentences.** Most sentences under 20 words. Fragments are allowed for impact. Read it aloud; if you run out of breath, cut it.
2. **Cinematic tension over information.** Lead with stakes and mystery; ration facts as the story needs them.
3. **Keep the viewer asking "what happened next?"** Every block should pull toward the next.
4. **A new curiosity device every 30–45 seconds** — a loop, a contrast, a reversal, or an unanswered question. Map them; don't hope for them.
5. **No long historical exposition.** Background is paid in small installments exactly when the story needs it. Never a lump of company history.
6. **No corporate-Wikipedia tone.** We are not summarizing a company; we are telling a story with an argument.
7. **No fake certainty.** State what is known plainly; hedge what is contested honestly ("reportedly," "by most accounts," "researchers who studied this found…").
8. **No exaggerated claims.** The real numbers are dramatic enough. Inflation destroys trust and invites correction.
9. **No motivational-guru language.** No "crush it," no "here's the secret the 1% know." Strategist, not hype-man.
10. **Never say "this proves"** unless the specific evidence is listed in the fact-check ledger and marked verifiable. Prefer "this suggests," "this is why," "the pattern is."
11. **Honesty of framing about the subject.** The company is smart and still fell — that is the whole point. The word "stupid" is banned for the subject; contempt kills the tension and the truth.
12. **The external disruptor is a catalyst, not a protagonist.** Name it, let it change the rules, then return the focus inside the subject company. It never becomes the main character.
13. **End on the Empire Law.** The Law Card moment lands clean, in ≤ 7 words, transferable to the viewer's own world.

## Fact-Control Rules (non-negotiable — this is a documentary channel)

1. **Every specific is ledgered.** If the narration states a number, quote, date, acquisition amount, internal memo, market share, prototype, executive claim, or research finding, it MUST appear as a row in the episode's fact-check ledger (`outputs/scripts/[slug]-fact-check-ledger.md`).
2. **Do not invent facts.** Ever. If a compelling detail can't be sourced, it isn't used as a fact — it is reframed as clearly-marked general framing or cut.
3. **Do not present unverified claims as verified.** Narration phrasing must match the claim's ledger status. An "unverified but useful" claim is written with hedging language, not asserted flatly.
4. **Keep useful claims; flag them.** A claim is not removed merely because it needs verification. It is written carefully, hedged appropriately, and flagged in the ledger for verification before publication.
5. **Ledger statuses** (exactly these four):
   - **Verified in project source** — supported by a source already held in the project.
   - **Needs external verification** — plausible and useful, but must be confirmed against an external source before publish.
   - **Remove if not verified** — high-risk and non-essential; if verification fails, it is cut, and the ledger names the safer fallback.
   - **Safe general framing** — an analytical or illustrative statement, not a specific factual claim; no single source required.
6. **Risk-tiering.** Every ledgered claim carries a risk level (High / Medium / Low) reflecting the damage if it were wrong — legal, reputational, or trust. High-risk specifics about real people and companies get the most scrutiny.
7. **The narration and the ledger ship together.** A script without its ledger is incomplete and cannot go to production.

## Retention Cadence (how the blueprint becomes sentences)

- Open the biggest loop in the first two sentences; do not close it until the Collapse Point.
- Every 30–45 seconds, insert one device from the toolkit (loop, contrast, reversal, question). The script marks each with a **Retention device** note per section.
- End every section on a transition line that opens the next question, so there is no flat seam between sections.
- The middle sections (3–5) carry the highest drop-off risk; they get the densest curiosity devices and the tightest sentences.

## Per-Section Output Contract

Each of the 9 canonical sections (`brands/empire-laws/video-format.md`) is written with all of:
- **Section title**
- **Timestamp range**
- **Narration** (spoken words only)
- **On-screen text** (short, non-echo)
- **Visual direction** (for the Design Director)
- **Retention device** (what holds the viewer here)
- **Transition line** (how it opens the next section)

## Length & Pace

- Target the episode's committed length (for the Nokia episode: 12–15 minutes).
- Narration pace ~150 words per minute. A 14-minute episode is roughly 2,000–2,200 spoken words. Count words; don't guess runtime.
- If the draft runs long, cut with the delete test (`brain/storytelling-rules.md`) — remove anything whose loss doesn't weaken the Collapse Point.

## Failure Conditions

- **Layer blending.** Narration, on-screen text, and visual direction merged into one block. Not production-ready.
- **Unledgered specifics.** Any number, date, quote, or named claim in narration that has no ledger row. Automatic return.
- **Flat assertion of contested facts.** Stating a "needs verification" claim as settled truth.
- **Wikipedia drift.** Paragraphs of neutral company history with no tension or argument.
- **Contempt or hype.** Calling the subject stupid; guru language; "you won't believe."
- **Enemy takeover.** The external disruptor becoming the protagonist of the middle of the script.
- **Runtime denial.** A "12-minute script" that is 3,500 words. Word count is the truth; the clock doesn't negotiate.
