# Nokia — Overlay Plan

The text-overlay system for the episode. Overlays are rendered in FFmpeg over the LTX clips — never baked into the AI images. Governed by `brands/empire-laws/visual-system.md`, `brain/local-mac-pipeline-system.md`, and the fact-check ledger. Every overlay carrying a number or quote is gated by the ledger.

**Core principle:** the AI image supplies atmosphere; overlays supply the verified facts and structure. Text is used sparingly — 13 of 50 scenes carry any overlay; 37 carry none.

## Typography Rules

- **Display / headlines / law card:** high-contrast serif (Playfair Display / Freight Big class) — institutional, historical weight.
- **Labels / data / timeline:** clean grotesque sans (Inter / Neue Haas class) — precise, legible.
- **Case:** section headlines in ALL CAPS with wide tracking; labels and law card in sentence case.
- **Weight & size:** headlines large but not full-bleed; labels ≥ 3.5% of frame height; law card generously sized but never edge-to-edge.
- **Never more than one overlay idea on screen at once.** No competing text blocks.

## Color Rules

- **Gold (#C9A227):** the law card text, key highlights, verified value labels (rising/empire).
- **Off-white (#EDEAE2):** section headlines and neutral labels.
- **Muted teal (#3E5C76):** analytical/timeline accents and axis lines only.
- **Collapse red (#B3282D):** used ONLY for a decline indicator on a verified data overlay (e.g., a small down-arrow beside the write-down figure). Scarcity keeps it potent; never for headlines.
- Background scrims: a subtle black-to-transparent gradient behind any text for legibility on busy frames.

## Safe-Zone Rules

- All text inside a 10% margin from every edge (title-safe).
- Vertical-safe center column kept clear so the same masters survive the 9:16 shorts crop (`FFmpeg + Whisper` shorts stage) — keep critical overlay text within the center 60% width.
- Overlays never overlap the burned-in subtitle band (lower ~18% of frame). Section headlines sit upper-third; data labels sit mid-to-lower but above the subtitle band; the law card is centered with subtitles suppressed on that scene.
- Reserve the exact clear zone the image prompt allocated: S05 top third, S40 lower band, S41/S42 small label area, S46 center.

## Title Card Rules (section headlines)

- One per major section, shown briefly (~1.5–2.5s) at the section's opening scene, then fades. Scenes: S04, S10, S15, S22, S32, S47.
- Cold Open (S01), the Law Card section (its card is S46), and the Final Line (S50 wordmark) do NOT get a section headline.
- Format: ALL-CAPS serif, off-white, upper-third, wide tracking, subtle fade in/out. No box, no underline.

## Timeline Rules

- Used once, at S40, as a horizontal band along the reserved lower area.
- **Only verified milestones may appear.** For this episode: `2007 iPhone · 2008 Android · 2011 the bet · 2013 sold`. The weak/attributed 2004 prototype date is BARRED from the timeline.
- Sans typeface, teal connective line, gold node dots, off-white labels; nodes light up left-to-right in sync with the narration.
- No unverified date, no fabricated precision (no fake day/month).

## Chart Rules

- A chart is an assertion — allowed ONLY when its data is marked Verified in the ledger and it earns its place.
- **This episode uses NO data chart.** The market-share point (S05) is a single verified label, not a chart; the sales decline (S36) is atmospheric (a ghosted falling line, no numbers), not a labeled chart. If a real chart is ever added, its data becomes a new sourced ledger row first.
- If ever used: dark background, one highlighted data point, thin teal/gold lines, minimal gridlines, a visible source credit.

## Law Card Rules

- Exactly one, at S46, the brand's signature moment.
- Full-screen near-black with subtle gold texture; the law in gold serif, centered, generous space; subtitles suppressed on this scene; a held beat of near-silence then the audio signature.
- Text: **"Hearing the future means nothing if your organization is too slow to act."** (the episode's own thesis/law — not an external factual claim, so no source citation needed).
- No other text on screen; no logo; nothing competes with the card.

## Source-Sensitive Text Rules

Overlays are the highest-risk surface for fact errors — a wrong number on screen is worse than in narration. Rules:

1. **A number or quote appears as text only if the ledger marks it Verified/Cleared and correctly scoped.** Spoken-but-unverified figures never become overlays.
2. **Scope every figure on screen.** The market-share label MUST read "estimated device market share · Nokia, Q4 2007" — not a bare "40%," and not "smartphone share."
3. **Exact money figures** (~$7.2B, ~$7.6B) appear only with source-aware wording ("reported," "write-down") and only because they are ledger-Verified to Reuters/Microsoft (S5/S6, S7).
4. **No verbatim quote overlay** anywhere — the burning-platform memo is referenced in narration without a quote, so no quote card exists.
5. **Attributed claims** (fear culture) get NO bare-fact overlay; if referenced on screen at all, the attribution ("researchers") must be visible. This episode keeps the fear-culture claim spoken-only, with no data overlay.
6. **Timeline/labels carry a small source credit** where practical (e.g., "Nokia Q4 2007" on the share label; the money labels imply Microsoft/Reuters via wording).

## Scene-by-Scene Overlay List

| Scene | Section | Overlay text | Type | Fact status | Source | Notes |
|-------|---------|--------------|------|-------------|--------|-------|
| S04 | Empire at the Top | THE EMPIRE AT THE TOP | headline | safe framing | — | Section title, upper third, brief. |
| S05 | Empire at the Top | ~40% — estimated device market share — Nokia, Q4 2007 | label | verified | S13 | Must keep the DEVICE-share scope; top-third clear zone. |
| S10 | The First Crack | THE FIRST CRACK | headline | safe framing | — | Section title. |
| S15 | Enemy Changes the Game | THE ENEMY CHANGES THE GAME | headline | safe framing | — | Section title. |
| S22 | The Internal Failure | THE INTERNAL FAILURE | headline | safe framing | — | Section title. |
| S31 | The Internal Failure | KNOWING vs DOING | label | safe framing | — | Thematic label, no numbers; clean center space. |
| S32 | The Collapse Point | THE COLLAPSE POINT | headline | safe framing | — | Section title. |
| S40 | The Collapse Point | 2007 iPhone · 2008 Android · 2011 the bet · 2013 sold | timeline | verified | S8, S10, S12, S3, S5, S6 | Verified milestones only; NO 2004. Lower band. |
| S41 | The Collapse Point | 2013 · ~$7.2 billion (reported) | label | verified | S5, S6 | Source-aware wording; no logo in frame. |
| S42 | The Collapse Point | 2015 · ~$7.6 billion write-down | label | verified | S7 | Optional small red down-arrow (only place red is used). |
| S46 | The Empire Law | Hearing the future means nothing if your organization is too slow to act. | law_card | thesis (safe framing) | — | Signature card; subtitles suppressed; center-safe. |
| S47 | Modern Warning | MODERN WARNING | headline | safe framing | — | Section title. |
| S50 | Final Line | EMPIRE LAWS | headline | safe framing | — | Wordmark over black after the fade; then end screen. |

All other scenes (S01–S03, S06–S09, S11–S14, S16–S21, S23–S30, S33–S39, S43–S45, S48–S49): **no overlay** — image and motion carry them. This keeps text sparse and premium.
