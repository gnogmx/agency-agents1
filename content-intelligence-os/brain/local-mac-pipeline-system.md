# Local Mac Pipeline System

The reusable operating rules for adapting any verified Empire Laws episode to the user's local Mac video pipeline. This layer turns a fact-controlled script + voiceover package into production files the local tools can consume. It does NOT produce Remotion code, final video, or a publication.

## The Local Pipeline (what we are adapting to)

The Mac pipeline runs, per episode:

1. Script + timed scenes (this system produces the scene plan)
2. **Flux.1 dev** — one image per scene
3. **LTX-Video 2B** — animates each image into a subtle ~4-second motion clip
4. **Kokoro-FastAPI or F5-TTS** — narration audio
5. **Whisper** — word-level subtitles
6. **MusicGen** — background music
7. **FFmpeg** — assembles the final video
8. **QC script** — resolution, sync, black frames, frozen frames, audio
9. **Flux + Pillow** — thumbnail
10. **FFmpeg + Whisper** — vertical shorts
11. **YouTube Data API** — upload and schedule

Our adapter output feeds stages 1–3 and 7–8 directly (scene plan, image prompts, motion prompts, overlay plan, QC checklist) and hands the verified voiceover package to stage 4.

## The Production Model

**One scene = one generated image + one subtle LTX motion clip + one narration chunk + optional overlay text.**

- A scene's length is set by its narration chunk (~12–22 seconds), not by the 4-second clip.
- Because the LTX clip is ~4 seconds, every scene declares an **LTX strategy** to fill its duration (see below).
- Overlays are separate from the image: verified numbers, section titles, law cards, timelines, and warnings are rendered as typographic overlays in FFmpeg, never baked into the AI image.

### LTX fill strategies (choose per scene)

- **loop** — clean seamless loop of the 4s clip for near-static atmosphere.
- **slow loop** — the clip slowed (e.g., 0.5×) to ~8s then looped; for calm, held moments.
- **repeat with zoom** — re-run the clip with a slow FFmpeg zoom each pass so repeats don't read as repeats.
- **repeat with alternating crop** — alternate a slightly different crop/pan each pass to hide the loop seam.
- **extended with FFmpeg** — clip plus a held/eased final frame with a Ken Burns move to reach duration.
- **combined with overlay movement** — a short clip under an animated overlay (number count, timeline build) that carries the motion.

## Visual Style (Empire Laws house look)

**Cinematic business documentary. Dark premium.** Palette: black, charcoal, gold, white, muted blue/teal accents. Editorial lighting, corporate-empire symbolism, metaphor over literal depiction.

Hard visual bans (enforced in every negative prompt and QC):
- No cartoon / illustration / 3D-render look.
- No "generic AI" glow, plastic skin, or over-bloomed neon.
- **No fake archival evidence** — AI images must read as cinematic atmosphere/metaphor, never as if they were real historical photos, documents, or footage.
- **No invented logos or fake branded assets**; **no real copyrighted logos** unless explicitly approved by a human.
- **No fake documents presented as real documents** (no fabricated memos, filings, or screenshots posing as evidence).
- No warped faces/hands; if people appear, they are anonymous, atmospheric, and non-identifiable — never a depiction of a real named person.

## Fact-Control Rules (carried into visuals)

The fact discipline of the ledger does not stop at the words — it governs what appears on screen:

1. **Exact numbers appear as overlays only when verified.** A figure may be rendered as on-screen text only if the fact-check ledger marks it Verified / Cleared and correctly scoped (e.g., "~40% — estimated device market share"). Unverified numbers never appear as text — at most they are spoken.
2. **No exact quotes on screen** unless the ledger marks the quote source-supported. The Nokia episode uses no verbatim memo quote, so no quote overlay exists.
3. **Attributed claims stay attributed on screen.** If a claim is "as researchers argued," an overlay for it must carry the attribution or be omitted — never rendered as a bare fact.
4. **Charts only for verified, useful claims.** A chart is an assertion; it is allowed only when its data is Verified in the ledger and the chart earns its place. Otherwise the claim stays spoken/atmospheric.
5. **Every scene carries a `fact_sensitivity` flag** (safe general framing / verified / cautious / attributed) and, where relevant, a `source_reference` to the source pack. QC checks overlays against these flags.
6. **The verified narration is immutable.** Scene chunks are copied verbatim from the voiceover package; segmentation never rewords them.

## Scene Segmentation Rules

- Break the episode into ~40–50 scenes total.
- Each scene ≈ 12–22 seconds of narration (roughly one to a few sentences of the verified narration).
- Cut scenes at natural narration boundaries (sentence/beat), never mid-sentence.
- Preserve the 9-section structure; every scene is tagged with its section.
- Signature moments (cold open image, the turn, the collapse, the Law Card, the final line) each get their own scene.
- Concatenated scene narration must reproduce the verified narration exactly, in order, with nothing added or dropped.

## Naming & Structure Conventions

- Episode id: `empire-laws-<topic>-<nnn>` (e.g., `empire-laws-nokia-001`).
- Scene ids: `S01`…`Snn`, zero-padded, in narration order.
- Asset filenames mirror scene ids: `S01_image.png`, `S01_clip.mp4`, `S01_scene.mp4`, plus episode-level `narration.wav`, `subtitles.srt`, `music.wav`, `final_1080p.mp4`, `thumbnail.png`, `short_01.mp4`.
- Folder layout is defined per-episode in its production manifest.

## Handoff Boundaries

- This layer produces the **plan and prompts**; the Mac pipeline generates the media.
- **Produce ≠ publish.** Even a finished render does not clear publication — the fact-check ledger's publication gate and human approval still govern (stage 11 upload stays blocked until approved).
- QC failures (black/frozen frames, warped anatomy, any banned visual, any unsupported overlay) stop the line before upload.
