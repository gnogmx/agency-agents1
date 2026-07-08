# Nokia — Production Manifest

The control sheet the local Mac pipeline reads to produce this episode. Governed by `brain/local-mac-pipeline-system.md` and `workflows/local-pipeline-export-workflow.md`.

## Episode

- **Title (working):** Nokia Heard the Future and Ignored It
- **Episode id:** empire-laws-nokia-001
- **Brand / pillar:** Empire Laws / Pillar 1 (The Collapse)
- **Empire Law:** Hearing the future means nothing if your organization is too slow to act.
- **Target runtime:** 12–15 minutes (scene plan totals ~13:11)
- **Language:** English

## Current Production Status

`voiceover_ready_visual_production_not_published`

- Script: VERIFIED v2 (fact-controlled), CLEARED FOR VOICEOVER DRAFT.
- Voiceover package: ready (clean narration + performance script + notes).
- Scene plan: complete — 50 scenes (`nokia-pipeline-scenes.json`).
- Visual generation: NOT started (Flux/LTX to run on the Mac).
- Assembly/QC: NOT started.
- Publication: BLOCKED (see gates below).

## Required Inputs (already produced by upstream layers)

| Input | File |
|-------|------|
| Verified script | `outputs/scripts/nokia-script-v2-verified.md` |
| Clean narration (TTS input) | `outputs/scripts/nokia-voiceover-script.md` (Version A) |
| Performance / pronunciation notes | `outputs/scripts/nokia-voiceover-performance-notes.md` |
| Fact-check ledger (verification + gate) | `outputs/scripts/nokia-fact-check-ledger.md` |
| Source pack | `outputs/scripts/nokia-source-pack.md` |
| Scene plan (JSON) | `outputs/production/nokia-pipeline-scenes.json` |
| Image prompts | `outputs/production/nokia-image-prompts.md` |
| Motion prompts | `outputs/production/nokia-motion-prompts.md` |
| Overlay plan | `outputs/production/nokia-overlay-plan.md` |
| QC checklist | `outputs/production/nokia-qc-checklist.md` |

## Required Outputs (the Mac pipeline generates these)

| Output | Producer | Filename |
|--------|----------|----------|
| Per-scene images (×50) | Flux.1 dev | `S01_image.png` … `S50_image.png` |
| Per-scene motion clips (×50) | LTX-Video 2B | `S01_clip.mp4` … `S50_clip.mp4` |
| Per-scene assembled segments | FFmpeg (clip + fill strategy + overlay) | `S01_scene.mp4` … `S50_scene.mp4` |
| Narration track | Kokoro-FastAPI or F5-TTS (from Version A) | `narration.wav` |
| Word-level subtitles | Whisper | `subtitles.srt` |
| Background music | MusicGen | `music.wav` |
| Final render | FFmpeg | `final_1080p.mp4` |
| QC report | QC script | `qc_report.txt` |
| Thumbnail | Flux + Pillow | `thumbnail.png` |
| Vertical shorts | FFmpeg + Whisper | `short_01.mp4`, `short_02.mp4`, … |

## Scene Count

**50 scenes.** ~12–22 seconds each; total ~13:11. Narration in the scene plan reproduces the verified v2 narration verbatim, in order (validated).

## Audio Status

- **Narration:** input ready (Version A clean narration). Not yet generated. Voice: low, warm, measured documentary (~145–155 wpm). Pronunciation guide in the performance notes (watch "Symbian").
- **Music:** not generated. MusicGen brief: tense, minimal, orchestral-electronic hybrid; movements matching the arc; near-silence under the S46 law card; sits UNDER narration (duck to ~-18 LUFS beneath the voice).
- **Loudness target:** narration bus ~-14 LUFS integrated for YouTube.

## Visual Generation Status

- **Images:** 0 / 50 generated. Prompts + negatives ready per scene.
- **Motion:** 0 / 50 generated. Motion prompts + LTX fill strategies ready per scene.
- **Overlays:** planned (13 scenes carry text). Rendered in FFmpeg, not baked into images.
- **Style lock:** cinematic premium business documentary; palette black/charcoal/gold/white/muted teal; visual bans enforced in every negative prompt.

## Fact Gate Status

**PASS for production planning; still gated for publish.** All on-screen numbers/quotes are ledger-controlled:
- Verified overlays only: ~40% (scoped as estimated device market share, S13), ~$7.2B (S5/S6), ~$7.6B (S7), verified timeline dates (S8/S10/S12/S3/S5/S6).
- No verbatim memo quote anywhere. Fear culture kept spoken-and-attributed (no bare-fact overlay). No fake documents, no logos.
- High-risk ledger rows (memo, Microsoft figures, research attribution) must be human-confirmed against the source pack before publish.

## Publication Gate Status

**BLOCKED.** Rendering the video does NOT clear publication. Upload via the YouTube Data API stays blocked until:
1. The fact-check ledger's publication gate is CLEARED (high-risk rows confirmed against sources), AND
2. QC passes (`nokia-qc-checklist.md`), AND
3. A human records final approval.
Produce ≠ publish.

## Folder Structure Expected by the Local Pipeline

```
empire-laws-nokia-001/
  inputs/
    nokia-pipeline-scenes.json
    nokia-voiceover-script.md            (Version A used for TTS)
    nokia-image-prompts.md
    nokia-motion-prompts.md
    nokia-overlay-plan.md
    nokia-qc-checklist.md
  images/            S01_image.png … S50_image.png
  clips/             S01_clip.mp4 … S50_clip.mp4
  scenes/            S01_scene.mp4 … S50_scene.mp4   (clip + fill + overlay)
  audio/
    narration.wav
    music.wav
  subtitles/
    subtitles.srt
  render/
    final_1080p.mp4
    qc_report.txt
  thumbnail/
    thumbnail.png
  shorts/
    short_01.mp4 …
```

## Filename Naming Convention

- Scene assets: `S<nn>_<type>.<ext>` — zero-padded scene id + type (`image`, `clip`, `scene`), matching `scene_id` in the JSON.
- Episode assets: fixed names above (`narration.wav`, `subtitles.srt`, `music.wav`, `final_1080p.mp4`, `thumbnail.png`, `short_<nn>.mp4`).
- Resolutions: images 1344×768 → LTX 1216×704 → final 1920×1080 (16:9); shorts 1080×1920 (9:16).

## What the Mac Pipeline Should Generate Next

1. **Narration** from `nokia-voiceover-script.md` (Version A) → `audio/narration.wav`; confirm pronunciation (esp. "Symbian").
2. **Images** for S01–S50 via Flux using the per-scene prompts + negatives (style-locked).
3. **Motion clips** via LTX using the per-scene motion prompts; apply each scene's LTX fill strategy to reach its duration.
4. **Overlays** per the overlay plan (13 scenes); render in FFmpeg over the clips — verified text only.
5. **Subtitles** via Whisper from the narration; suppress subtitles on S46 (law card).
6. **Music** via MusicGen; duck under narration; silence under the law card.
7. **Assemble** scenes → `final_1080p.mp4` (FFmpeg), timing each scene to its narration chunk.
8. **QC** via `nokia-qc-checklist.md` → `qc_report.txt`.
9. **Thumbnail** and **shorts** after QC pass.
10. **STOP.** Do not upload. Route to human review + the publication gate.
