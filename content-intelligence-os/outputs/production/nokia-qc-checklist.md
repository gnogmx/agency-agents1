# Nokia — QC Checklist

Quality-control gate for `empire-laws-nokia-001`, run by the local QC script and a human reviewer before any upload. Governed by `brain/local-mac-pipeline-system.md`. A failure on any hard-gate item BLOCKS upload. Feeds `render/qc_report.txt`.

## How to use

- Automated checks: the QC script verifies what it can (resolution, black/frozen frames, sync, audio levels, asset presence).
- Human checks: a reviewer confirms the judgment items (fake logos, fake evidence, fact overlays, tone).
- Every item is PASS / FAIL / N/A. Any FAIL on a **[HARD GATE]** item blocks upload until fixed.

---

## 1. Completeness

- [ ] All 50 scene images generated (S01–S50). **[HARD GATE]**
- [ ] All 50 motion clips generated and assembled into scene segments. **[HARD GATE]**
- [ ] Every scene's duration matches its narration chunk (no orphaned/short scenes).
- [ ] Concatenated scene narration equals the verified narration, in order (spot-check against `nokia-voiceover-script.md` Version A). **[HARD GATE]**
- [ ] Narration, subtitles, music, final render, thumbnail, and at least one short all present.

## 2. Frame Integrity

- [ ] No black frames anywhere in the render (except the intentional fade-to-black at S50). **[HARD GATE]**
- [ ] No frozen frames beyond intended held/eased frames (check LTX "extended with FFmpeg" scenes: S01, S10, S12, S23, S32, S34, S39, S43, S49, S50). **[HARD GATE]**
- [ ] No visible loop seams on repeated clips (check "loop"/"slow loop"/"repeat" scenes; zoom/crop variation should hide seams).
- [ ] No flicker/strobe, no glitch artifacts, no compression blocking.
- [ ] Consistent grade and palette across all scenes (black/charcoal/gold/white/muted teal); no scene reads as off-style.

## 3. People & Anatomy

- [ ] No warped faces or malformed hands/fingers in any scene where figures appear (S03, S12, S16, S21, S22, S25, S29, S34). **[HARD GATE]**
- [ ] All human figures are anonymous silhouettes — no depiction resembling a real named person (e.g., no likeness of the real CEO). **[HARD GATE]**
- [ ] No lip movement / speech animation on any figure.

## 4. Brand & Evidence Safety

- [ ] No fake or invented logos anywhere. **[HARD GATE]**
- [ ] No accidental real company logos (Nokia, Microsoft, Apple, Google, Android, carmakers, banks) in images, devices, tiles, or reflections. **[HARD GATE]**
- [ ] No AI image presented as real archival evidence (no fake photos, fake footage). **[HARD GATE]**
- [ ] No fake documents presented as real (no fabricated memo/filing/screenshot). Confirm S24 (message on stairs) and S33 (burning platform) carry NO readable document. **[HARD GATE]**
- [ ] Devices at S06/S11/S13/S15/S38 are generic/stylized concepts, not real product likenesses.

## 5. Fact-Control On Screen

- [ ] No verbatim quote overlay anywhere (the burning-platform memo is referenced without a quote). **[HARD GATE]**
- [ ] No unsupported exact number appears as on-screen text. **[HARD GATE]**
- [ ] Every numeric overlay is ledger-verified and correctly scoped:
  - [ ] S05 reads "estimated device market share · Nokia, Q4 2007" (NOT bare "40%", NOT "smartphone share"). **[HARD GATE]**
  - [ ] S40 timeline uses ONLY verified milestones (2007 iPhone, 2008 Android, 2011 the bet, 2013 sold); the 2004 prototype date is ABSENT. **[HARD GATE]**
  - [ ] S41 shows "~$7.2 billion (reported)" (source: Reuters/Microsoft). **[HARD GATE]**
  - [ ] S42 shows "~$7.6 billion write-down" (source: Microsoft 2015). **[HARD GATE]**
- [ ] The fear-culture claim has no bare-fact overlay (spoken-and-attributed only).
- [ ] S46 law card text is exactly the episode's law; subtitles suppressed on that scene.

## 6. Audio & Sync

- [ ] Narration matches the verified Version A word-for-word (no improvised lines). **[HARD GATE]**
- [ ] "Symbian" and all names pronounced correctly (see performance notes).
- [ ] Narration and on-screen action are in sync per scene (no drift across the 13 minutes).
- [ ] Subtitles are word-accurate and sync to narration (Whisper output reviewed); names/numbers spelled correctly.
- [ ] Music sits UNDER narration (ducked), never masking the voice; near-silence held under the S46 law card.
- [ ] Loudness: narration bus ~-14 LUFS integrated; no clipping.

## 7. Final Render

- [ ] Final render is 1920×1080, 16:9, correct frame rate, clean container. **[HARD GATE]**
- [ ] Runtime lands within 12–15 minutes.
- [ ] Overlays inside title-safe margins; critical text within the center 60% (survives the 9:16 shorts crop).
- [ ] End of video fades cleanly to the EMPIRE LAWS wordmark (S50); end screen room present; no "thanks for watching".

## 8. Derivatives

- [ ] Thumbnail generated (Flux + Pillow), on-brand (dark premium), passes glance test, no fake/real logo, no unsupported number as text.
- [ ] At least one vertical short generated (9:16), correctly cropped, subtitles legible, no critical overlay lost to the crop.

## 9. Publication Gate (final, human)

- [ ] Fact-check ledger publication gate CLEARED — high-risk rows (memo/S3-S4, ~$7.2B/S5-S6, ~$7.6B/S7, research attribution/S1-S2) confirmed against the source pack. **[HARD GATE]**
- [ ] Human reviewer sign-off recorded (fidelity, tone, visual bans, overlays). **[HARD GATE]**
- [ ] **Upload BLOCKED until both above are checked.** Produce ≠ publish — the YouTube Data API step does not run until this section passes. **[HARD GATE]**

---

**QC verdict:** ______ (PASS / FAIL) — a single unresolved [HARD GATE] FAIL = overall FAIL = no upload.
