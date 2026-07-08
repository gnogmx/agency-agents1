# Workflow — Voiceover Production

The process that turns a verified script into recordable voiceover — clean TTS input plus a performance layer — without changing a single verified fact. It runs after the script clears the voiceover-draft gate (`workflows/episode-script-workflow.md` / the fact-check ledger) and before any Remotion production. It produces audio-ready text and, ultimately, an approved narration track; it produces no motion-graphics code and no thumbnails.

**Purpose:** get the episode ready for voice recording (human or TTS) at premium documentary quality, with the verified script preserved exactly.

## When It Runs

- After the fact-check ledger marks the script CLEARED FOR VOICEOVER DRAFT.
- Before the storyboard/production stages of the script-production workflow that need a narration track.

## Inputs

- The verified script (`outputs/scripts/[slug]-script-v2-verified.md`) — the ONLY source of narration wording
- `brain/voiceover-system.md` — voice, pacing, pause, emphasis, anti-hype, and TTS-cleanup rules
- The fact-check ledger (`outputs/scripts/[slug]-fact-check-ledger.md`) — confirms which phrasing is locked
- `brands/empire-laws/brand.md` — tone reference

## Sequence

### Step 1 — Start from the verified script only
Confirm the script is at CLEARED-FOR-VOICEOVER-DRAFT status. Voiceover is built solely from the verified narration layer; the visual-direction and on-screen-text layers are NOT spoken and are excluded. No wording is invented or changed here.

### Step 2 — Extract clean narration (Version A)
Pull only the **Narration** layer from each of the 9 sections, preserving section titles and timestamp ranges, into `outputs/scripts/[slug]-voiceover-script.md` (Version A). This is the canonical TTS/record input. Strip visual direction, on-screen text, and production notes. Verify word-for-word fidelity to the verified script.

### Step 3 — Add the performance layer (Version B)
Copy Version A into Version B and overlay only delivery markup — [pause] tags, **emphasis**, and [tone] cues — per `brain/voiceover-system.md`. The words are untouched; only how they're delivered is annotated. No exaggerated acting; premium documentary tone only.

### Step 4 — Pronunciation review
Produce/confirm the pronunciation guide in the performance notes for every proper noun, acronym, and foreign term (company names, product names, people, institutions). Provide phonetic hints for the narrator/TTS. Flag any homographs for in-context disambiguation.

### Step 5 — Generate draft audio
Feed Version A (clean narration) to the chosen tool in section-sized chunks, mapping Version B's [pause] tags to the tool's native break/SSML controls and using its voice/style settings for the house voice. For a human narrator, Version B is the direction sheet. Keep the verified wording intact in every chunk.

### Step 6 — Review pacing and clarity
Listen to the draft against `brain/voiceover-system.md`: tempo variation present, reveals slowed, hooks left hanging, numbers landing, Law Card in near-silence, no hype cadence. Note any flat or rushed lines.

### Step 7 — Fix awkward TTS phrases
For lines that mispronounce, mis-pace, or sound robotic: regenerate with punctuation/pause tweaks, per-tool phonetic respellings, or smaller chunks — **without changing the verified wording** in the canonical script. Tool-only substitutions (a phonetic spelling for one stubborn name) never propagate back into Version A or the verified script.

### Step 8 — Human approval before final audio
A reviewer confirms: the narration matches the verified script word-for-word, no new claims crept in, attributed claims still sound attributed, pronunciation is correct, and the tone is premium (not hype). Approval → the narration track is cleared for use in production. This does not clear publication (the ledger's publication gate still governs).

## Outputs

| Artifact | Location |
|----------|----------|
| Clean narration (Version A) + performance script (Version B) | `outputs/scripts/[slug]-voiceover-script.md` |
| Performance & pronunciation notes | `outputs/scripts/[slug]-voiceover-performance-notes.md` |
| Approved narration audio | delivered into the production package at the record step |

## Rules

1. **Verified wording is immutable.** Voiceover changes delivery, never facts or ledger-approved phrasing.
2. **Only the narration layer is spoken.** Visual direction and on-screen text are never read aloud.
3. **Version A is the canonical input.** Version B's tags are converted to tool controls or used as human direction; the words fed to any tool are the verified narration.
4. **Tool fixes stay in the tool.** Per-tool phonetic respellings never edit the canonical script.
5. **No hype.** Premium documentary delivery only; when in doubt, take the emotion down.
6. **Approval before final.** A human confirms fidelity and tone before the track is used.

## Failure Modes to Watch

- **Silent rewording** — "improving" a line for flow and changing a verified claim. The wording is locked.
- **Reading the wrong layer** — narrating visual direction or on-screen text.
- **Hype creep** — the voice trailer-ifying the reveals or punching the numbers.
- **Attribution collapse** — an attributed claim delivered as flat certainty.
- **Respelling leakage** — a tool-only phonetic spelling contaminating the canonical script.
- **Monotone drift** — feeding the whole script at once so the voice flattens; chunk by section.
