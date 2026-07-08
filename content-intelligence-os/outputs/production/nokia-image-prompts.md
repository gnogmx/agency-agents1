# Nokia — Flux Image Prompts

Readable image-prompt list for every scene, derived from `outputs/production/nokia-pipeline-scenes.json` (the JSON is the source of truth). Style: cinematic premium business documentary — dark, editorial, metaphor-first. 50 scenes.

## Global Style Consistency (applies to every scene)

- **Base look:** cinematic business documentary still; dark premium editorial lighting; high contrast; shallow depth of field; subtle film grain; anamorphic; 16:9.
- **Palette (locked):** black, charcoal, deep gold, white, muted teal. Gold = value/empire/rising; teal = cold/analytical; red is NOT in the palette (reserved and unused here).
- **Generation resolution:** 1344×768 (Flux) → LTX 1216×704 → final 1920×1080.
- **Metaphor over literal:** images are atmosphere and symbol, never fake evidence.
- **Global negative prompt (append to every scene):** cartoon, illustration, anime, 3d render, cgi, video game, plastic skin, waxy skin, oversaturated, neon glow, heavy bloom, lens flare, watermark, caption, subtitles, on-image text, brand logo, real company logo, fake newspaper, fake document, deepfake of a real person, recognizable celebrity, identifiable face of a real named person, distorted hands, extra fingers, warped face, low resolution, blurry, jpeg artifacts, meme, clipart, archival photograph, fake historical photo.
- **Consistency anchors:** keep one cold key light + one warm gold accent per frame; keep humans anonymous silhouettes; keep all devices/objects generic and un-branded; reserve clear space in frames that carry overlays (S05, S31, S40, S41, S42, S46, S49).

---

## Scene Prompts

### S01 — Cold Open — cue: "Years before the iPhone, inside a lab in Finland…"
- **Image prompt:** [global style] A single glowing early touchscreen concept device on a dark workbench in a dim Finnish design lab, cold blue key light with one warm gold reflection, dust suspended in air, no visible faces, a sense of hidden potential.
- **Negative:** [global] + readable screen text, real product likeness.
- **Consistency notes:** Establishes the bench + device motif that returns at S50 (bookend). No screen text, no logo.

### S02 — Cold Open — cue: "And Nokia never turned them into one decisive product…"
- **Image prompt:** [global style] A vast empty phone factory floor at night going dark, one distant gold work light switching off, long shadows, an empire quietly winding down, wide cinematic, no people, no logos.
- **Negative:** [global] + brand marks on machinery.
- **Consistency notes:** Sale figure NOT shown here (verified figure appears at S41). Atmosphere only.

### S03 — Cold Open — cue: "Nokia didn't miss the future… how did they still lose everything?"
- **Image prompt:** [global style] A lone anonymous silhouette from behind at a high window over a city of cold blue lights with a single gold horizon glow, contemplative, no identifiable face.
- **Negative:** [global] + identifiable face, celebrity.
- **Consistency notes:** Anonymous silhouette (recurs at S21). Hold the hook in near-silence.

### S04 — The Empire at the Top — cue: "In the mid-2000s, Nokia wasn't just winning…"
- **Image prompt:** [global style] A towering monolith of dark glass rising above low clouds at dusk, warm gold light in its windows, corporate dominance, epic scale, no logos.
- **Negative:** [global] + resemblance to a real HQ.
- **Consistency notes:** Section-headline overlay scene. Generic tower.

### S05 — The Empire at the Top — cue: "…estimated share of the device market reached around forty percent."
- **Image prompt:** [global style] An abstract dark globe wrapped in a dense mesh of glowing gold connection nodes over the continents, TOP THIRD kept clean for an overlaid statistic, elegant data atmosphere.
- **Negative:** [global] + cluttered top third.
- **Consistency notes:** Reserve top third for the verified label. Data-atmosphere, not a literal chart.

### S06 — The Empire at the Top — cue: "This wasn't luck. It was a machine…"
- **Image prompt:** [global style] A colossal automated assembly line of identical dark handheld devices to a vanishing point, gold rim light, relentless manufacturing perfection, no logos.
- **Negative:** [global] + brand marks, recognizable models.
- **Consistency notes:** Generic devices. Industrial rhythm supports the "machine" line.

### S07 — The Empire at the Top — cue: "…Nokia's own software, Symbian…"
- **Image prompt:** [global style] A glowing circuit-board core as an engine room beneath a dark fortress, fine teal data traces from a central gold chip, software as hidden power.
- **Negative:** [global] + readable code.
- **Consistency notes:** Symbian is spoken, never labeled on screen.

### S08 — The Empire at the Top — cue: "Hardware. Scale. Distribution. A fortress…"
- **Image prompt:** [global style] A vast dark stone fortress on a cliff, fortified toward one direction while a storm gathers from the undefended side, preparing for the wrong war.
- **Negative:** [global] + distorted architecture.
- **Consistency notes:** Fortress motif recurs at S20. Longer scene — plan zoom repeats.

### S09 — The Empire at the Top — cue: "That kind of strength casts a shadow…"
- **Image prompt:** [global style] A single hairline crack of faint gold light through a massive dark marble pillar, extreme close, subtle and ominous, the first flaw.
- **Negative:** [global] + distorted texture.
- **Consistency notes:** The "planted seed" beat; keep it subtle.

### S10 — The First Crack — cue: "Here's what makes this a tragedy…"
- **Image prompt:** [global style] A dim research lab at night, a covered prototype under a cloth, one shaft of gold light across it, something important hidden inside the building, no faces.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** Section-headline overlay. Covered shape is symbolic.

### S11 — The First Crack — cue: "…experimented early with touchscreens and internet-ready devices…"
- **Image prompt:** [global style] A few early touchscreen and internet-tablet CONCEPT devices on a dark table like museum studies, respectful lighting, clearly stylized concepts (not real product photos).
- **Negative:** [global] + real product likeness, fake historical photo.
- **Consistency notes:** Claim rests on a single reported source (S15) — never frame as real archival evidence.

### S12 — The First Crack — cue: "…a prototype is not a platform…"
- **Image prompt:** [global style] A brilliant technical blueprint glowing on a dark drafting table while a shadowed hand slides a drawer partway closed over it, potential set aside, no readable text.
- **Negative:** [global] + readable blueprint text, distorted hands.
- **Consistency notes:** Hand is a silhouette; no anatomy errors. No readable text.

### S13 — The First Crack — cue: "Why gamble the empire on an unproven touchscreen…"
- **Image prompt:** [global style] A single unlit concept device on a pedestal beside a brightly lit shelf of classic-style handsets — the safe proven bet glowing, the risky future dark, no logos.
- **Negative:** [global] + real product likeness.
- **Consistency notes:** Generic handsets; Symbian not labeled.

### S14 — The First Crack — cue: "…couldn't commit to getting there first… where empires actually die."
- **Image prompt:** [global style] Overhead view of a fork in a dark road, one branch gold-lit and untaken, the other worn and familiar, a decision not made.
- **Negative:** [global] + distorted perspective.
- **Consistency notes:** Ends the section on the question; keep quiet.

### S15 — The Enemy Changes the Game — cue: "When the iPhone was introduced in early 2007…"
- **Image prompt:** [global style] A sleek dark rectangular slab object glowing under one spotlight on a minimalist stage, the arrival of a new kind of object, restrained, no logos.
- **Negative:** [global] + real product likeness.
- **Consistency notes:** Section-headline overlay. Catalyst kept generic and un-branded (not the protagonist).

### S16 — The Enemy Changes the Game — cue: "…changed what customers expected a phone to feel like…"
- **Image prompt:** [global style] Extreme close of a fingertip touching a luminous glass surface, concentric ripples of teal and gold light, the new tactile expectation.
- **Negative:** [global] + distorted hand, extra fingers.
- **Consistency notes:** Reframed claim (experience, not specs) — no spec comparison implied. One clean hand.

### S17 — The Enemy Changes the Game — cue: "…an app store… opened in 2008 with a few hundred apps…"
- **Image prompt:** [global style] A central dark device surrounded by an expanding constellation of small BLANK glowing tiles forming an ecosystem, many outside light sources, gold and teal.
- **Negative:** [global] + app icons with logos, readable text.
- **Consistency notes:** Tiles must be blank (no real app logos). Launch detail verified (S9).

### S18 — The Enemy Changes the Game — cue: "…Google's Android… an open platform others could build on."
- **Image prompt:** [global style] The ecosystem concept copied across many identical dark devices in a wide grid, one shared platform spreading to many makers, teal and gold, no logos.
- **Negative:** [global] + real company logo, Android robot, Google mark.
- **Consistency notes:** Abstract open platform. Timing verified (S10/S11/S12).

### S19 — The Enemy Changes the Game — cue: "And with that, the rules changed…"
- **Image prompt:** [global style] A grand chessboard whose carved squares are dissolving into flowing dark water mid-game, pieces still standing as the board changes beneath them.
- **Negative:** [global] + distorted geometry.
- **Consistency notes:** Rival kept peripheral; the rule-change is the subject.

### S20 — The Enemy Changes the Game — cue: "…a moat around the wrong castle… Keep them to the side."
- **Image prompt:** [global style] A grand fortress with a wide moat on ground turning to liquid, stone strengths sinking, faint gold cracks spreading.
- **Negative:** [global] + distorted architecture.
- **Consistency notes:** Fortress callback to S08. No competitor imagery.

### S21 — The Enemy Changes the Game — cue: "…Knowing was never the problem."
- **Image prompt:** [global style] A lone anonymous strategist silhouette at a wide dark window watching a distant storm approach, full awareness and stillness, no identifiable face.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** Silhouette callback to S03. Door into the film's core.

### S22 — The Internal Failure — cue: "…Nokia didn't fall because it was foolish. It fell because it was slow…"
- **Image prompt:** [global style] The interior of an enormous dark machine of countless slow gears, a tiny anonymous human figure dwarfed within it, the organization as a slow machine.
- **Negative:** [global] + identifiable face, distorted gears.
- **Consistency notes:** Section-headline overlay. Frame Nokia as slow, never foolish.

### S23 — The Internal Failure — cue: "Start with fear. Researchers who later studied Nokia argued…"
- **Image prompt:** [global style] A long dark meeting room with one harshly lit chair at the head of the table, long shadows, quiet institutional fear, no visible faces.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** ATTRIBUTED claim (S1/S2). Any on-screen reference must say "researchers." No faces.

### S24 — The Internal Failure — cue: "…the picture that reached the top could be smoother…"
- **Image prompt:** [global style] A folded message traveling up a steep dark staircase, growing fainter and gold-washed at each higher step, truth softened as it rises, no readable text.
- **Negative:** [global] + readable paper text.
- **Consistency notes:** Same attributed research thread. No fake-document look.

### S25 — The Internal Failure — cue: "…the hardest truths were softened on the way up."
- **Image prompt:** [global style] Anonymous executive silhouettes atop a tower gazing at a clean, too-perfect gold horizon while a dark storm hides in the valley below, a distorted optimistic view.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** Silhouettes only; no named-person likeness.

### S26 — The Internal Failure — cue: "…Symbian had been built and rebuilt for years…"
- **Image prompt:** [global style] Countless glowing threads and circuit traces knotted into an impossibly tangled dense ball, teal and gold, tiny lights caught inside, accumulated technical debt.
- **Negative:** [global] + readable code.
- **Consistency notes:** Analysis-supported (S1/S2/S14). No metric on screen.

### S27 — The Internal Failure — cue: "A giant organization, with rival divisions…"
- **Image prompt:** [global style] A colossal dark ship's hull from below with many small tugboats pulling in different directions, the unturnable organization, cold water, gold rim light.
- **Negative:** [global] + distorted hull.
- **Consistency notes:** Metaphor only; subtle motion to hide the loop.

### S28 — The Internal Failure — cue: "Every delay compounds…"
- **Image prompt:** [global style] A long row of identical hourglasses receding into darkness, gold sand barely moving, some grains suspended mid-air, the compounding of delay, minimalist.
- **Negative:** [global] + distorted glass.
- **Consistency notes:** Near-frozen sand suits a slow loop.

### S29 — The Internal Failure — cue: "Nokia wasn't standing still. It was working incredibly hard…"
- **Image prompt:** [global style] A lone anonymous runner silhouette pushing through waist-deep dark water while blurred fast light streaks race past on dry ground, effort against speed.
- **Negative:** [global] + identifiable face, distorted body.
- **Consistency notes:** Sympathetic framing (hard-working). Clean anatomy.

### S30 — The Internal Failure — cue: "…couldn't turn that knowledge into action fast enough."
- **Image prompt:** [global style] Split composition: a crystal-clear distant gold horizon (vision) on one side, a stalled dark figure unable to reach it on the other, a lit gold gap between.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** Sets up the "gap" paid off at S31.

### S31 — The Internal Failure — cue: "…Nokia's problem was never vision. It was speed."
- **Image prompt:** [global style] A stark minimalist frame with a wide dark chasm between two cliff edges and a single thin gold thread across it, generous clear space for an overlaid label.
- **Negative:** [global] + cluttered composition.
- **Consistency notes:** Thematic label overlay (no numbers). Intellectual climax; keep clean space.

### S32 — The Collapse Point — cue: "By 2011, Nokia had new leadership and a decision to make…"
- **Image prompt:** [global style] A single empty executive chair under a hard spotlight in a large dark room, the weight of an impending decision, tension, no visible face.
- **Negative:** [global] + identifiable face.
- **Consistency notes:** Section-headline overlay. Do not depict the real CEO.

### S33 — The Collapse Point — cue: "…a company standing on a burning platform…"
- **Image prompt:** [global style] A dark industrial offshore platform silhouette with a faint fire glow at its base against black water and sky, ominous, a visual echo of the burning-platform image.
- **Negative:** [global] + readable memo, fake document.
- **Consistency notes:** Memo verified (S3/S4) but NO verbatim quote overlay and NO fake memo document. Platform is metaphor only. Recurs at S34.

### S34 — The Collapse Point — cue: "Then Nokia jumped… partnership with Microsoft's Windows Phone."
- **Image prompt:** [global style] A lone figure silhouette leaping from a burning platform silhouette toward cold dark water, frozen mid-air, the all-in jump, no identifiable face, no logos.
- **Negative:** [global] + real company logo, identifiable face.
- **Consistency notes:** Windows Phone framed cautiously (S16). No Microsoft/Windows logo.

### S35 — The Collapse Point — cue: "The new phones weren't ready. Not for months…"
- **Image prompt:** [global style] A half-built bridge ending abruptly in mid-air over a dark chasm at dusk, the replacement not ready, gold and teal light.
- **Negative:** [global] + distorted structure.
- **Consistency notes:** Metaphor for the gap before replacement phones; no product depiction.

### S36 — The Collapse Point — cue: "Sales… didn't just slow. They fell hard…"
- **Image prompt:** [global style] A dim retail shelf going dark and emptying, a faint FALLING gold line ghosted across the background suggesting collapsing demand, no readable numbers, no logos.
- **Negative:** [global] + readable numbers, fake chart data.
- **Consistency notes:** Osborne framing (analytical). The line is atmospheric, NOT a labeled chart; no sales numbers.

### S37 — The Collapse Point — cue: "…it moved so hard it cut away its own foundation…"
- **Image prompt:** [global style] A tall dark structure beginning to collapse because its own base was cut away, controlled-demolition feeling, dust and faint gold light.
- **Negative:** [global] + distorted collapse.
- **Consistency notes:** Grave, not spectacular.

### S38 — The Collapse Point — cue: "…the N9. It was, by many accounts, a genuinely credible product."
- **Image prompt:** [global style] A single elegant STYLIZED concept device glowing softly on a museum pedestal in a shaft of gold light, admired but alone, clearly a concept (not a real product photo), no logos.
- **Negative:** [global] + real product likeness, fake historical photo.
- **Consistency notes:** N9 framed as credible-but-unbacked (S16), NOT salvation. Stylized concept only.

### S39 — The Collapse Point — cue: "…a path the company had already decided not to back."
- **Image prompt:** [global style] The same pedestal device with a large door of gold light closing and turning away behind it, a path being walked away from.
- **Negative:** [global] + real product likeness.
- **Consistency notes:** Regretful tone, not triumphant.

### S40 — The Collapse Point — cue: "The window hadn't closed back in 2007… The final bet just sealed it."
- **Image prompt:** [global style] A tall aperture of gold light slowly narrowing to a thin sliver across a dark wall, a LOWER BAND kept clear for a horizontal timeline overlay.
- **Negative:** [global] + cluttered lower band.
- **Consistency notes:** Timeline overlay uses ONLY verified milestones (no 2004). Reserve the lower band.

### S41 — The Collapse Point — cue: "…Microsoft agreed to buy Nokia's Devices and Services business. Reported at around seven point two billion dollars."
- **Image prompt:** [global style] A large abstract emblem-shaped VOID (no real logo) dissolving into drifting gold particles as a business changes hands, sober, clear space for a small label.
- **Negative:** [global] + real company logo.
- **Consistency notes:** Verified figure overlay (~$7.2B, S5/S6). No real Nokia/Microsoft logo.

### S42 — The Collapse Point — cue: "…an impairment of roughly seven point six billion dollars… effectively, gone."
- **Image prompt:** [global style] A vast empty dark hall with a single bare plinth where a monument once stood, the empire effectively gone, elegiac, clear space for a small label.
- **Negative:** [global] + distorted hall.
- **Consistency notes:** Verified figure overlay (~$7.6B, S7). Hold the emptiness.

### S43 — The Empire Law — cue: "So here's the law underneath all of it… Vision is cheap."
- **Image prompt:** [global style] A single dark tablet or open book glowing with a faint INDISTINCT gold inscription (no readable words), a lesson beginning to surface, reverent.
- **Negative:** [global] + readable words, legible text.
- **Consistency notes:** Inscription must be non-readable (the law appears at S46).

### S44 — The Empire Law — cue: "…the speed between knowing and doing…"
- **Image prompt:** [global style] A single bright gold thread racing between two glowing points while tangled dark threads try to hold it back, the speed between knowing and doing, abstract.
- **Negative:** [global] + distorted lines.
- **Consistency notes:** Abstract; the law is shown on the card at S46.

### S45 — The Empire Law — cue: "…all that delay adds up… That's the Empire Law."
- **Image prompt:** [global style] Countless tiny gold grains of delay accumulating into a heavy mass on a dark balance scale tipping over, the quiet weight of delay.
- **Negative:** [global] + distorted scale.
- **Consistency notes:** Builds to the law card; slow and grave.

### S46 — The Empire Law — cue: "Hearing the future means nothing if your organization is too slow to act…" (LAW CARD)
- **Image prompt:** [global style, minimal] Near-black field with a subtle brushed-gold texture and a soft central glow, generous EMPTY centered space reserved for the law-card text overlay, minimal and reverent, no baked text.
- **Negative:** [global] + busy background, clutter.
- **Consistency notes:** THE signature Law Card — the stillest frame. Center-safe composition for the overlay.

### S47 — Modern Warning — cue: "Because the same shift keeps happening… carmakers… chip companies… banks…"
- **Image prompt:** [global style] A layered contemporary montage in one frame: a modern car dissolving into circuitry, a chip-city skyline, a bank facade turning into flowing code, all generic and un-branded.
- **Negative:** [global] + real company logo, real car brand.
- **Consistency notes:** Section-headline overlay. Illustrative and generic; no specific company shown.

### S48 — Modern Warning — cue: "…seeing everything, and still not being able to move."
- **Image prompt:** [global style] A dominant modern glass tower at dusk with a faint countdown clock reflected across its surface, seeing everything yet frozen, no logos, no readable numbers.
- **Negative:** [global] + readable clock numbers.
- **Consistency notes:** Clock non-readable/abstract; no figures.

### S49 — Modern Warning — cue: "…how long it takes your company to get from knowing to doing…"
- **Image prompt:** [global style] A quiet reflective composition: an abstract clock face merging with a calm office horizon at dawn, gold light rising, an invitation to self-reflection, space for a small overlay.
- **Negative:** [global] + readable clock, legible text.
- **Consistency notes:** Turns the lesson toward the viewer.

### S50 — Final Line — cue: "Nokia could see the future clearly… time doesn't wait for giants." (BOOKEND)
- **Image prompt:** [global style] The early concept devices from S01 on the dark bench, the single gold light slowly going out, a bookend to the cold open, deep quiet, clear centered space for a wordmark overlay.
- **Negative:** [global] + real product likeness.
- **Consistency notes:** Mirrors S01 exactly (same bench/devices) for closure. Fade to black, then the EMPIRE LAWS wordmark; leave room for the end screen.
