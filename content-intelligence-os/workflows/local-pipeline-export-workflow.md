# Workflow — Local Pipeline Export

The reusable process that turns a verified Empire Laws episode into production files the local Mac pipeline can consume, then drives that pipeline through QC and human review to the publication gate. It produces plans, prompts, and manifests — never Remotion code, never final video, never a publication.

**Purpose:** hand the local Mac tools (Flux, LTX-Video, Kokoro/F5-TTS, Whisper, MusicGen, FFmpeg, QC, thumbnail, shorts, YouTube API) everything they need, with the fact-control discipline carried all the way into what appears on screen.

## When It Runs

- After the voiceover package is ready (`workflows/voiceover-production-workflow.md`) and the script is CLEARED FOR VOICEOVER DRAFT.
- Before any upload. Publication stays blocked by the fact-check ledger's publication gate regardless of render status.

## Inputs

- `outputs/scripts/[slug]-script-v2-verified.md` — verified script (structure, visual direction reference)
- `outputs/scripts/[slug]-voiceover-script.md` — clean narration (the exact scene text) + performance script
- `outputs/scripts/[slug]-voiceover-performance-notes.md` — pacing, tone, pronunciation
- `outputs/scripts/[slug]-fact-check-ledger.md` — verification statuses that gate overlays
- `outputs/scripts/[slug]-source-pack.md` — source references for verified overlays
- `brain/local-mac-pipeline-system.md` — the production model, visual style, and fact-control-in-visuals rules

## Sequence

### Step 1 — Start from the verified script
Confirm the script is at CLEARED FOR VOICEOVER DRAFT and the ledger's verification columns are populated. All scene planning derives from verified material only.

### Step 2 — Start from the clean voiceover package
Use Version A (clean narration) as the canonical scene text. Scene chunks are copied verbatim; no rewording. Pull tone/pace from the performance notes.

### Step 3 — Split narration into production scenes
Segment the narration into ~40–50 scenes of ~12–22s each, cut at natural boundaries, tagged by section, with signature moments isolated. Verify the concatenated scene text reproduces the verified narration exactly.

### Step 4 — Assign visual type per scene
For each scene decide: atmospheric metaphor image vs. overlay-driven moment (headline / label / chart / timeline / law_card / none). Set the `fact_sensitivity` flag and any `source_reference`. Charts only for Verified claims.

### Step 5 — Generate Flux image prompts
Write one image prompt + negative prompt per scene in the house style (dark premium, palette-locked, metaphor-first), enforcing the visual bans. Record style-consistency notes so all ~45 images read as one film.

### Step 6 — Generate LTX motion prompts
Write a subtle motion prompt + camera move + LTX fill strategy per scene, specifying what must move subtly and what must NOT move. Keep motion minimal and premium.

### Step 7 — Generate the overlay plan
Define typography/color/safe-zone rules and the scene-by-scene overlay list. Every overlay with a number/quote is checked against the ledger; unsupported specifics are barred from text.

### Step 8 — Generate the production manifest
Write the manifest: status, inputs/outputs, scene count, audio/visual/fact/publication gate states, folder structure, naming convention, and what the pipeline should generate next.

### Step 9 — Run the local pipeline
Hand the files to the Mac pipeline: Flux images → LTX clips → narration (from the voiceover package) → Whisper subtitles → MusicGen → FFmpeg assembly. (Executed on the user's machine; this workflow supplies the plan.)

### Step 10 — Run QC
Run the QC checklist: all scenes present, no black/frozen frames, no warped anatomy, no fake or accidental real logos, no unsupported quotes/numbers on screen, narration and subtitle sync, music under narration, final 1080p render.

### Step 11 — Human review
A reviewer confirms: narration matches the verified script, every on-screen number/quote is ledger-approved and scoped, visual bans are respected, and tone is premium. Failures return to the relevant step.

### Step 12 — Only then publish
Publication remains blocked until the fact-check ledger's publication gate is CLEARED with human approval recorded. Upload (YouTube API) runs only after that. Produce ≠ publish.

## Outputs

| Artifact | Location |
|----------|----------|
| Production manifest | `outputs/production/[slug]-production-manifest.md` |
| Scene plan (valid JSON) | `outputs/production/[slug]-pipeline-scenes.json` |
| Image prompts | `outputs/production/[slug]-image-prompts.md` |
| Motion prompts | `outputs/production/[slug]-motion-prompts.md` |
| Overlay plan | `outputs/production/[slug]-overlay-plan.md` |
| QC checklist | `outputs/production/[slug]-qc-checklist.md` |

## Rules

1. **Verified narration is immutable.** Scene chunks are verbatim; segmentation never rewrites.
2. **Fact-control reaches the screen.** No unsupported number or quote as overlay text; attributed claims stay attributed; charts only for Verified data.
3. **Visual bans are absolute.** No fake archival evidence, no fake or unapproved real logos, no fake documents, no depiction of real named people.
4. **Valid JSON only** in the scenes file — no comments, no trailing commas, no markdown in values.
5. **Produce ≠ publish.** Render completion never clears the publication gate.
6. **Reusable.** These steps apply to any future Empire Laws episode, not only Nokia.

## Failure Modes to Watch

- **Overlay leakage** — an unverified figure or a quote rendered as on-screen text.
- **Fake-evidence drift** — an AI image that reads as a real photo/document.
- **Loop tells** — repeated LTX clips that visibly loop; use zoom/crop/extend strategies.
- **Narration drift** — a scene chunk quietly reworded during segmentation.
- **Gate bypass** — treating a finished render as permission to upload.
