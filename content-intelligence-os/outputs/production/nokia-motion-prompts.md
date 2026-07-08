# Nokia — LTX Motion Prompts

Readable motion-prompt list for every scene, derived from `outputs/production/nokia-pipeline-scenes.json`. LTX-Video 2B produces ~4-second clips; each scene declares a fill strategy to reach its narration duration (~12–22s).

## Global Motion Rules

- **Subtle, premium, cinematic.** Documentary restraint. The image should feel alive, not animated.
- **Allowed movement:** slow camera moves (push-in, pull-out, pan, tilt, parallax, orbit), gentle environmental motion (dust, smoke, water, drifting light, faint flicker), and single slow gestures.
- **Forbidden movement (all scenes):** fast pans/zooms, whip motion, bounce/elastic easing, glitch or shake, morphing faces, warping hands, moving mouths/speech, spinning objects, cartoon physics, strobing, anything that breaks the premium calm.
- **People:** anonymous silhouettes only — no facial animation, no lip movement, no gait that reveals identity.
- **Loop discipline:** where a strategy repeats the 4s clip, vary each pass (zoom/crop) so the loop is invisible; never leave a hard visible seam.

## LTX Fill Strategies (per the pipeline system)

- **loop** — seamless loop of the 4s clip.
- **slow loop** — clip slowed (~0.5×) then looped; for held, calm frames.
- **repeat with zoom** — re-run with a slow FFmpeg zoom each pass.
- **repeat with alternating crop** — alternate a slightly different crop/pan per pass.
- **extended with FFmpeg** — clip plus an eased held final frame / Ken Burns move to reach duration.
- **combined with overlay movement** — short clip under an animated overlay (number/label/timeline) that carries the motion.

---

## Scene Motion

### S01 — Cold Open
- **Motion:** Very slow push-in toward the glowing device; faint dust drifting; a subtle pulse of light on the screen surface.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the light pulse and dust only.
- **Must NOT happen:** no screen content animating, no text appearing, no fast move.

### S02 — Cold Open
- **Motion:** Slow pull-out from the fading light; a barely perceptible flicker as the far light dims.
- **Camera:** slow pull-out · **LTX strategy:** slow loop
- **Must be subtle:** the distant light flicker.
- **Must NOT happen:** no machinery running fast, no people.

### S03 — Cold Open
- **Motion:** Almost still; slow parallax drift across the city lights; faint reflection shimmer on the glass.
- **Camera:** slow parallax drift · **LTX strategy:** slow loop
- **Must be subtle:** the parallax and shimmer.
- **Must NOT happen:** the silhouette must not turn or reveal a face.

### S04 — The Empire at the Top
- **Motion:** Slow tilt up the tower; clouds drifting past its base; gold window lights shimmering faintly.
- **Camera:** slow tilt-up · **LTX strategy:** repeat with zoom
- **Must be subtle:** cloud drift and window shimmer.
- **Must NOT happen:** no fast rise, no logo appearing on the tower.

### S05 — The Empire at the Top
- **Motion:** Slow subtle globe rotation; gold nodes gently twinkling on and off.
- **Camera:** slow orbit · **LTX strategy:** combined with overlay movement
- **Must be subtle:** node twinkle; the overlay statistic animates in gently.
- **Must NOT happen:** the top third must stay clear; no fast spin.

### S06 — The Empire at the Top
- **Motion:** Slow dolly along the line; gentle conveyor motion; gold light traveling down the rails.
- **Camera:** slow lateral dolly · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** conveyor + traveling light.
- **Must NOT happen:** no frantic factory speed, no readable devices.

### S07 — The Empire at the Top
- **Motion:** Slow push-in toward the central chip; teal data pulses traveling along the traces.
- **Camera:** slow push-in · **LTX strategy:** loop
- **Must be subtle:** the data pulses.
- **Must NOT happen:** no readable code, no strobing.

### S08 — The Empire at the Top
- **Motion:** Slow push-in on the fortress as faint storm clouds roll behind it; subtle lightning glow.
- **Camera:** slow push-in · **LTX strategy:** repeat with zoom
- **Must be subtle:** cloud roll and distant lightning.
- **Must NOT happen:** no lightning strobe, no fast storm.

### S09 — The Empire at the Top
- **Motion:** The crack of light slowly, faintly widens by a fraction; otherwise still.
- **Camera:** static with subtle light shift · **LTX strategy:** slow loop
- **Must be subtle:** the crack widening barely.
- **Must NOT happen:** no shattering, no fast crack growth.

### S10 — The First Crack
- **Motion:** Slow push-in toward the covered shape; dust drifting through the light shaft.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** dust in the beam.
- **Must NOT happen:** the cloth must not lift/reveal; no faces.

### S11 — The First Crack
- **Motion:** Slow lateral pan across the devices; faint gold glints traveling over their surfaces.
- **Camera:** slow pan-right · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** surface glints.
- **Must NOT happen:** no screens turning on, no product-photo realism.

### S12 — The First Crack
- **Motion:** The drawer edge eases closed a few centimeters; gold light on the blueprint slowly dims.
- **Camera:** static with slow light fade · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the small drawer move and dimming.
- **Must NOT happen:** the hand must not warp; no readable blueprint.

### S13 — The First Crack
- **Motion:** Slow push toward the dark concept device while the bright shelf stays steady; subtle light contrast breathing.
- **Camera:** slow push-in · **LTX strategy:** slow loop
- **Must be subtle:** the contrast breathing.
- **Must NOT happen:** no device powering on, no brand marks.

### S14 — The First Crack
- **Motion:** Slow descent toward the fork; the gold path faintly pulsing as if inviting.
- **Camera:** slow crane-down · **LTX strategy:** repeat with zoom
- **Must be subtle:** the gold-path pulse.
- **Must NOT happen:** no fast descent.

### S15 — The Enemy Changes the Game
- **Motion:** Slow orbit around the glowing slab; spotlight intensity gently breathing.
- **Camera:** slow orbit · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** spotlight breathing.
- **Must NOT happen:** no logo, no fast reveal — the object stays a peripheral catalyst.

### S16 — The Enemy Changes the Game
- **Motion:** Ripples of light expand slowly outward from the fingertip; single gentle pulse.
- **Camera:** static with radial light motion · **LTX strategy:** loop
- **Must be subtle:** the ripple.
- **Must NOT happen:** no finger warping, no extra fingers.

### S17 — The Enemy Changes the Game
- **Motion:** Tiles slowly multiply and drift outward from the center; gentle twinkle.
- **Camera:** slow pull-out · **LTX strategy:** combined with overlay movement
- **Must be subtle:** tile drift and twinkle.
- **Must NOT happen:** tiles must stay blank (no app logos).

### S18 — The Enemy Changes the Game
- **Motion:** A wave of light passes across the grid of devices as they light up in sequence.
- **Camera:** slow pan-left · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** the sequential light-up.
- **Must NOT happen:** no Android/Google marks; no fast flashing.

### S19 — The Enemy Changes the Game
- **Motion:** The dissolving edge of the board ripples and flows slowly; pieces subtly reflecting in the forming water.
- **Camera:** slow push-in · **LTX strategy:** repeat with zoom
- **Must be subtle:** the water ripple.
- **Must NOT happen:** pieces must not topple fast; no splash.

### S20 — The Enemy Changes the Game
- **Motion:** The ground ripples slowly; the fortress settles a fraction; gold cracks creep.
- **Camera:** slow pull-out · **LTX strategy:** repeat with zoom
- **Must be subtle:** the settle and creeping cracks.
- **Must NOT happen:** no collapse here (that is S37); no competitor imagery.

### S21 — The Enemy Changes the Game
- **Motion:** Distant storm clouds drift and flicker with faint lightning; the figure stays still.
- **Camera:** static with subtle background motion · **LTX strategy:** slow loop
- **Must be subtle:** storm drift.
- **Must NOT happen:** the silhouette must not move or reveal a face.

### S22 — The Internal Failure
- **Motion:** The great gears turn very slowly; the small figure almost motionless; dust in the light.
- **Camera:** slow pull-out · **LTX strategy:** slow loop
- **Must be subtle:** slow gear turn.
- **Must NOT happen:** no fast machinery; the figure must stay anonymous.

### S23 — The Internal Failure
- **Motion:** Shadows lengthen almost imperceptibly; a faint flicker in the harsh overhead light.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** shadow shift and flicker.
- **Must NOT happen:** no faces appear; no chair movement.

### S24 — The Internal Failure
- **Motion:** The message drifts slowly up the steps; each step brightening softly as it passes.
- **Camera:** slow tilt-up · **LTX strategy:** combined with overlay movement
- **Must be subtle:** the drift and brightening.
- **Must NOT happen:** no readable document text; no fake-memo look.

### S25 — The Internal Failure
- **Motion:** The hidden storm below churns slowly while the gold horizon stays serenely still.
- **Camera:** slow pull-out · **LTX strategy:** slow loop
- **Must be subtle:** the churn vs. stillness contrast.
- **Must NOT happen:** the silhouettes must not resolve into faces.

### S26 — The Internal Failure
- **Motion:** The tangle slowly rotates; individual threads twitch as if straining; faint pulses struggling through.
- **Camera:** slow orbit · **LTX strategy:** repeat with zoom
- **Must be subtle:** thread twitch and pulses.
- **Must NOT happen:** no readable code; no fast unravel.

### S27 — The Internal Failure
- **Motion:** The tugboats strain and pull in conflicting directions; the huge hull barely moving; water churning slowly.
- **Camera:** slow pan-right · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** strain and slow churn.
- **Must NOT happen:** the hull must not turn quickly.

### S28 — The Internal Failure
- **Motion:** A few grains of sand drift down in extreme slow motion; the rest hang still.
- **Camera:** slow lateral dolly · **LTX strategy:** slow loop
- **Must be subtle:** a few falling grains.
- **Must NOT happen:** no fast pouring sand.

### S29 — The Internal Failure
- **Motion:** The runner strains forward almost in slow motion while the background light streaks blur fast past.
- **Camera:** slow tracking · **LTX strategy:** combined with overlay movement
- **Must be subtle:** the strained forward push.
- **Must NOT happen:** no body warping; the runner stays anonymous.

### S30 — The Internal Failure
- **Motion:** The horizon shimmers steadily while the stalled figure strains and cannot advance; the gap faintly pulsing.
- **Camera:** static with subtle light motion · **LTX strategy:** slow loop
- **Must be subtle:** shimmer and gap pulse.
- **Must NOT happen:** the figure must not reach the horizon.

### S31 — The Internal Failure
- **Motion:** The gold thread vibrates faintly under tension; a slow drift across the chasm.
- **Camera:** slow parallax drift · **LTX strategy:** combined with overlay movement
- **Must be subtle:** thread vibration; the label animates in gently.
- **Must NOT happen:** the thread must not snap; keep clean space for the overlay.

### S32 — The Collapse Point
- **Motion:** The spotlight intensity breathes slowly; faint dust drifts through the beam.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** spotlight breathing.
- **Must NOT happen:** no person appears in the chair.

### S33 — The Collapse Point
- **Motion:** Flames flicker slowly at the base; smoke drifts; water moves gently below.
- **Camera:** slow push-in · **LTX strategy:** repeat with zoom
- **Must be subtle:** flame flicker and smoke.
- **Must NOT happen:** no large explosion; no memo/quote appears.

### S34 — The Collapse Point
- **Motion:** Hold the leap nearly frozen with faint drifting embers and slow-falling motion.
- **Camera:** static with ember drift · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** ember drift.
- **Must NOT happen:** the figure must not complete the fall on screen; no logo.

### S35 — The Collapse Point
- **Motion:** Slow push toward the broken end of the bridge; mist drifting up from the chasm.
- **Camera:** slow push-in · **LTX strategy:** repeat with zoom
- **Must be subtle:** mist drift.
- **Must NOT happen:** no bridge collapse here.

### S36 — The Collapse Point
- **Motion:** Products fade from the shelf one by one; the ghost line drifts slowly downward.
- **Camera:** slow pan-left · **LTX strategy:** combined with overlay movement
- **Must be subtle:** the fading and the drifting line.
- **Must NOT happen:** no readable sales numbers; the line is atmospheric, not a labeled chart.

### S37 — The Collapse Point
- **Motion:** The structure begins to lean and settle very slowly; dust rising in slow motion.
- **Camera:** slow pull-out · **LTX strategy:** repeat with zoom
- **Must be subtle:** the lean and dust.
- **Must NOT happen:** no fast/explosive collapse; keep it grave.

### S38 — The Collapse Point
- **Motion:** Slow orbit around the pedestal device; the light shaft gently breathing.
- **Camera:** slow orbit · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** the light breathing.
- **Must NOT happen:** no product-photo realism; no logo; screen stays dark.

### S39 — The Collapse Point
- **Motion:** The gold doorway slowly narrows and dims behind the device.
- **Camera:** slow pull-out · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the doorway narrowing.
- **Must NOT happen:** no triumphant lighting; keep regretful.

### S40 — The Collapse Point
- **Motion:** The aperture of light narrows steadily; motes drift through the closing gap.
- **Camera:** slow push-in · **LTX strategy:** combined with overlay movement
- **Must be subtle:** aperture narrowing; the timeline builds in along the lower band.
- **Must NOT happen:** the lower band must stay clear; no unverified date in the timeline.

### S41 — The Collapse Point
- **Motion:** The emblem-shaped form slowly disperses into particles that drift upward.
- **Camera:** slow push-in · **LTX strategy:** combined with overlay movement
- **Must be subtle:** particle dispersal; the ~$7.2B label animates in gently.
- **Must NOT happen:** no real logo forms; only the verified figure as text.

### S42 — The Collapse Point
- **Motion:** Slow pull-out from the empty plinth; faint dust settling in the still air.
- **Camera:** slow pull-out · **LTX strategy:** combined with overlay movement
- **Must be subtle:** dust settling; the ~$7.6B label animates in gently.
- **Must NOT happen:** no monument reappears; hold the emptiness.

### S43 — The Empire Law
- **Motion:** The gold inscription glow slowly strengthens; faint particles rising from the page.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the glow strengthening.
- **Must NOT happen:** no readable words appear (the law is at S46).

### S44 — The Empire Law
- **Motion:** The gold thread pulses forward in bursts while the dark threads slowly tighten around it.
- **Camera:** slow lateral dolly · **LTX strategy:** loop
- **Must be subtle:** the pulse-forward vs. tightening.
- **Must NOT happen:** the thread must not break; no fast motion.

### S45 — The Empire Law
- **Motion:** Grains drift down and settle; the scale tips very slowly past its balance point.
- **Camera:** slow push-in · **LTX strategy:** combined with overlay movement
- **Must be subtle:** the slow tip.
- **Must NOT happen:** no sudden crash of the scale.

### S46 — The Empire Law (LAW CARD)
- **Motion:** An almost imperceptible slow drift of the gold texture and a gentle breathing glow; near-static.
- **Camera:** static with subtle glow · **LTX strategy:** slow loop
- **Must be subtle:** the breathing glow only.
- **Must NOT happen:** nothing competes with the law text; hold near-silence; center-safe.

### S47 — Modern Warning
- **Motion:** Slow morph between the three motifs; code and circuitry flowing gently.
- **Camera:** slow lateral dolly · **LTX strategy:** repeat with alternating crop
- **Must be subtle:** the slow morph.
- **Must NOT happen:** no real brand/car logo; no fast montage cuts.

### S48 — Modern Warning
- **Motion:** The reflected clock hands sweep slowly; a subtle drift across the glass.
- **Camera:** slow tilt-up · **LTX strategy:** slow loop
- **Must be subtle:** the sweeping hands.
- **Must NOT happen:** no readable clock numbers.

### S49 — Modern Warning
- **Motion:** The dawn light rises slowly; the clock face fades gently into the horizon.
- **Camera:** slow push-in · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the rising light and fade.
- **Must NOT happen:** no readable clock; keep it calm and reflective.

### S50 — Final Line (BOOKEND)
- **Motion:** The gold light fades slowly to black; one last faint glint on the devices; then darkness.
- **Camera:** slow pull-out to black · **LTX strategy:** extended with FFmpeg
- **Must be subtle:** the fade and final glint.
- **Must NOT happen:** no abrupt cut; leave black room for the wordmark and end screen.
