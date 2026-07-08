# Voiceover System

The reusable system for turning a verified Empire Laws script into recordable voiceover — for a human narrator or a TTS/voice tool (ElevenLabs, HeyGen, PlayHT, OpenAI TTS, and similar). It governs voice, pacing, pauses, emphasis, and the mechanical cleanup that keeps synthetic narration from sounding robotic — without ever changing a verified fact.

This system prepares words for the microphone. It does NOT rewrite the script's meaning, produce motion-graphics/Remotion code, or generate thumbnails. Its one hard boundary: **the verified narration meaning is immutable.** Fact-controlled phrasing from the ledger cannot be altered here — only paced, emphasized, and cleaned for delivery.

## Voice Style (Empire Laws house voice)

- **Character:** a strategist telling you something few people understand. Calm, certain about what is known, honest about what isn't. Authority without theatrics.
- **Register:** lower, warm, close-mic. Intimate rather than broadcast. The listener should feel spoken *to*, not announced *at*.
- **Pace:** measured — roughly 145–160 words per minute of active speech, slower across the biggest moments. Documentary, not radio-DJ.
- **Restraint:** the drama lives in the facts and the silences, not in vocal performance. Under-play the big lines; let them land on their own.

## Pacing Rules

1. **Vary the tempo deliberately.** A flat, even pace is what makes narration feel robotic. Speed up slightly through setup and context; slow down through reveals, turns, and the law.
2. **Slow the reveals.** The cold-open contradiction, the mid-video turn, the collapse point, and the Empire Law each get a lower, slower delivery than the surrounding lines.
3. **One idea per breath.** Short spoken sentences are delivered as complete thoughts with air between them. If a line can't be said in one comfortable breath, it pauses mid-line.
4. **Let numbers land.** Figures, dates, and names get a fractional beat before and after so the ear can catch them.

## Pause Rules

Three pause lengths, used intentionally:

- **[short pause]** (~0.4–0.7s) — between sentences within a thought; after a name or number.
- **[medium pause]** (~0.8–1.3s) — between beats; before a reframe or a "but"; after a rhetorical question.
- **[long pause]** (~1.5–2.5s) — before and after the biggest moments: the cold-open turn, the collapse reveal, and the Empire Law card. Silence is a tool, not dead air.

Rules: never stack two long pauses back to back; never place a pause mid-number or mid-name; the single longest silence in the episode belongs to the Law Card.

## Emphasis Rules

- Mark emphasis with **bold** on the specific word or short phrase that carries the line's meaning — usually a contrast word ("*saw* it early"), a stake, or the turn ("it was *speed*").
- **One emphasis per sentence, at most.** Over-emphasis reads as a hard-sell and destroys the premium tone.
- Emphasize by *weight and slight slowing*, not by volume spikes. The voice leans in; it does not shout.
- Never emphasize filler words ("very," "really," "actually").

## Documentary Narration Rules

1. Speak in the third person about the subject; address the viewer directly only where the script does ("your company," "you").
2. Deliver contested/attributed claims with the built-in qualifier audible — "researchers argued," "reported at around" — so the delivery matches the fact status. Never perform an attributed claim as if it were certain.
3. Statements end down (falling intonation), not up. Uptalk erodes authority.
4. Questions are genuine hooks — let them hang before answering.

## Anti-Hype Rules

The fastest way to cheapen a premium documentary is a hype read. Banned in delivery:

- No trailer-voice or "movie announcer" cadence.
- No rising, breathless build on lists.
- No exclamatory punch on numbers ("SEVEN POINT TWO BILLION!"). Big figures are delivered *quietly*; scale speaks for itself.
- No smile-in-the-voice salesmanship, no motivational-speaker lift.
- No manufactured outrage or sneering at the subject — the tone toward the company is grave, not mocking.
- When in doubt, take the emotion *down*. Restraint reads as confidence.

## TTS Cleanup Rules

To keep synthetic voices from mispronouncing, mis-pacing, or sounding flat:

1. **Spell for the ear where needed.** Provide phonetic hints for names/acronyms in the performance notes (e.g., INSEAD → "IN-see-ad"), and, if a tool mishandles one, substitute a phonetic spelling in that tool's input only — never in the canonical script.
2. **Normalize numbers to spoken form.** Write figures the way they're said ("around seven point two billion dollars"), not as "$7.2B," so TTS voices them correctly. (The Empire Laws scripts already do this.)
3. **Expand ambiguous symbols and abbreviations.** No "%", "&", "e.g.", "≈" in TTS input — write "percent," "and," "for example," "around."
4. **Control pacing with punctuation and tags.** Commas and periods create natural micro-pauses; the [pause] tags map to the tool's break controls (e.g., SSML `<break>` or the tool's pause syntax). Convert the bracket tags to the target tool's format at generation time — do not leave literal "[medium pause]" in a tool that won't parse it.
5. **Break very long paragraphs into shorter generation chunks** so the voice re-baselines its intonation and doesn't drift monotone. Section by section is the natural unit.
6. **Avoid characters that TTS reads aloud** — em-dashes are usually fine as pauses, but stray markdown (##, **, >) must be stripped from the clean TTS input.
7. **Homographs get disambiguated** — words like "read," "live," "lead" are checked in context; if a tool guesses wrong, respell for that tool only.

## Preparing Scripts for Specific Tools

- **ElevenLabs:** paste the clean narration; use its pause/break controls or SSML `<break time="1s"/>` mapped from the [pause] tags; keep chunks to a section or two so the voice stays consistent; pick a low, warm, mature voice and moderate stability with slight style for documentary cadence.
- **OpenAI TTS:** feed clean narration in section chunks; it ignores markdown, so strip formatting; convey tone through sentence structure and the natural language of the text (it does not read bracket tags), and stitch sections in the edit.
- **HeyGen (or avatar tools):** use the clean narration; keep sentences short for lip-sync stability; place breaks at sentence boundaries; avoid mid-sentence [pause] that can desync the avatar.
- **PlayHT / others:** map [pause] tags to the tool's SSML or pause syntax; verify number and name pronunciation first, then generate full sections.

General rule: **Version A (clean narration) is the canonical TTS input.** The [pause]/[emphasis]/[tone] tags of Version B are converted to each tool's native controls — or used as human-narrator direction — but the *words* fed to any tool are always the verified narration.

## How to Avoid Robotic Narration

- Feed section-sized chunks, not the whole script at once, so intonation re-baselines.
- Introduce real tempo variation (setup faster, reveals slower) rather than a uniform read.
- Place genuine pauses at thought boundaries; monotone comes from evenly-spaced words with no breathing.
- Keep sentences short and concrete — TTS handles them more naturally than long subordinate clauses.
- Regenerate any line that lands flat rather than accepting the first take; small wording-neutral punctuation tweaks (a comma, a period split) often fix cadence without touching meaning.

## How to Preserve Retention Without Sounding Fake

- Retention comes from the *writing's* loops and reveals; the voice's job is to not get in their way. Deliver the hook and the turns with slowing and lowering, not with hype.
- Let the questions hang — the pause after a hook question is what pulls the viewer forward, and a fake-excited read kills it.
- The Law Card lands in near-silence; the least performed moment is the most powerful.
- Trust the material. The scale of the facts (a global leader, gone in a few years) is dramatic on its own; over-selling it signals insecurity and breaks the premium contract.

## Hard Boundaries

- **Never change a verified fact or its ledger-approved phrasing.** Pacing and emphasis only.
- **Never add a spoken claim** that isn't in the verified script.
- **Never harden an attributed claim** into a certain-sounding read.
- **Never introduce exact numbers or quotes** beyond those the ledger approved.
