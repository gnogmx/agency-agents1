# Thumbnail Rules

System-wide rules for thumbnail concepts, design, and testing. Brand-specific visual identity lives in `brands/<brand>/visual-system.md`.

## What a Thumbnail Is

A thumbnail is not a poster, a summary, or a decoration. It is one half of a two-part curiosity machine (the other half is the title) competing for a glance that lasts under one second, usually at the size of a postage stamp on a phone.

## The Glance Test (mandatory gate)

Every thumbnail concept must pass at 10% zoom (or arm's-length phone view):
1. Can you tell what the ONE subject is?
2. Does it provoke a question in under a second?
3. Is it distinguishable from the competitor thumbnails it will sit beside? (Check against actual competitor thumbnails, not in isolation.)

Fail any of the three → rejected before design time is spent.

## Composition Rules

1. **One idea per thumbnail.** One focal subject, one emotion or tension. Two competing focal points halve attention on each.
2. **Three elements maximum**: subject, context signal, tension device. Example: [Steve Jobs face] + [falling Apple logo] + [red arrow down]. Anything past three is clutter at glance size.
3. **Faces work when the emotion is legible.** A famous face with a readable expression (fear, arrogance, regret) outperforms logos. An unknown face with a neutral expression underperforms almost everything.
4. **Contrast is the currency.** High subject/background contrast, warm-vs-cool color opposition, big-vs-small scale contrast. Thumbnails compete against a wall of noise; contrast is how they win the first 100 milliseconds.
5. **Text: 3 words maximum, and only if it adds tension the image can't.** Text must NOT repeat the title — the pair is a combined message, not an echo. "$0" on the thumbnail with the title "How Nokia Lost Everything" works; "NOKIA'S FALL" on the same thumbnail is wasted pixels.
6. **Rule of thirds for the subject; leave one zone breathable.** Cramped thumbnails read as low quality, and quality perception transfers to expected video quality.
7. **Design for dark mode and light mode.** Check on both backgrounds; most viewing happens on dark mode mobile.

## Curiosity Devices That Work (use deliberately)

- **The unexplained anomaly**: something visibly wrong or out of place (a Ferrari in a junkyard, a stadium empty at a championship).
- **Before/after collision**: peak vs. ruin in a single frame — the entire story arc as one image.
- **The forbidden document**: redacted memo, courtroom sketch, "leaked" chart — signals hidden information.
- **Scale shock**: one small element against something enormous (a person vs. a mountain of product inventory).
- **The moment before disaster**: tension is stronger than aftermath.

## Anti-Patterns (auto-reject)

- Screenshot-with-arrow aesthetics; red circles around nothing meaningful.
- More than 3 words of text, or text below 8% of frame height.
- Clickbait mismatch: a thumbnail promising content the video doesn't deliver. This trades one video's CTR for the channel's long-term retention and trust.
- Copying a specific competitor thumbnail closely enough that we appear beside it and lose the comparison.
- Busy backgrounds that survive at full size but turn to mud at glance size.

## Process Requirements

1. Minimum **3 distinct concepts** (different devices, not color variants) per video, produced at idea stage — before scripting.
2. Each concept mocked at small size and compared in a synthetic "home feed" against 6 real competitor thumbnails.
3. Winner + runner-up both produced at full quality; runner-up is the ready-made swap if 48-hour CTR is below 3% (see `brain/youtube-growth-rules.md` R6).
4. Every published thumbnail is logged in `memory/thumbnail-history.md` with its device type, CTR, and verdict — this is how the brand learns its own visual language.
