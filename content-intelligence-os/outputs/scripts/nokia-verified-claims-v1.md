# Verified Claims v1 — "Nokia Heard the Future and Ignored It"

Classification of every claim in `outputs/scripts/nokia-script-v1.md` into decision buckets, based on the source pack (`outputs/scripts/nokia-source-pack.md`) and the Fact Verification System (`brain/fact-verification-system.md`). This prepares the rewrite pass; it does not rewrite the script.

Claim numbers match `outputs/scripts/nokia-fact-check-ledger.md`. Sources are cited as S1–S16 from the source pack.

**Buckets:**
- **A — Safe to use directly** (Verified by Official/Academic/Major-media source)
- **B — Safe to use with cautious phrasing** (Verified with caution — needs a qualifier or scope)
- **C — Use only if attributed** (Use only as reported — name who reported/researched it)
- **D — Must be rewritten** (original phrasing not supportable; reframe to a defensible claim)
- **E — Remove if no stronger source is found** (high-risk, unsupported; cut unless upgraded)
- **F — Safe general framing** (no specific factual claim; no single source required)

---

## A — Safe to Use Directly

Exact numbers/quotes allowed **only** as tied to the named source.

| # | Claim | Source(s) | Exact number/quote allowed |
|---|-------|-----------|-----------------------------|
| 8 | The iPhone was introduced on January 9, 2007, as a phone + iPod + internet device with a multi-touch interface. | S8 (Official) | Yes — date and positioning tied to S8 |
| 11 | Android was announced as an open platform (Nov 5, 2007); the first Android phone, the T-Mobile G1, arrived in September 2008 — spread across manufacturers, not a single "Google phone." | S10, S11, S12 (Official) | Yes — dates tied to S10/S12; "no single Gphone" tied to S11 |
| 15a | In February 2011, Nokia's CEO Stephen Elop sent an internal memo describing the company as "standing on a burning platform." | S3, S4 (Major media) | Yes — the exact quote "standing on a burning platform" allowed, cited to S3 |
| 17a | In September 2013, Microsoft agreed to acquire Nokia's Devices & Services business for about $7.2 billion. | S5 (Official), S6 (Major media) | Yes — ~$7.2B tied to S6/S5; date and scope tied to S5 |
| 17b | In July 2015, Microsoft announced an impairment charge of approximately $7.6 billion related to the Nokia Devices & Services acquisition. | S7 (Official) | Yes — ~$7.6B tied to S7 |
| 3 | Nokia exited the phone business, selling it for a fraction of the company's former worth. | S5, S6 (deal) | Comparative only; the "fraction" framing is safe. The peak-value half depends on Claim 5 (see E). |

---

## B — Safe to Use with Cautious Phrasing

Usable, but the narration must carry the qualifier. Do not harden these into flat assertions.

| # | Claim | Source(s) | Required qualifier / scope |
|---|-------|-----------|-----------------------------|
| 4 | At its peak, Nokia reached about 40% share — roughly four in ten phones. | S13 (Official, Nokia Q4 2007) | Must be scoped as **estimated device market share** (Nokia's own Q4 2007 framing), **not** smartphone share. "Roughly four out of ten" is fine; the 40% figure is allowed only with the device-share scope. |
| 6 | Symbian was Nokia's own operating system and led smartphones before the iPhone. | S14 (analysis) | Keep qualitative. No exact share % (none in pack). Frame as "Nokia's own software, dominant in the pre-iPhone smartphone era." |
| 7 | Promising next-generation ideas inside Nokia were repeatedly shelved or overruled to protect the existing business. | S1, S2 (Academic), S15 (reported) | Frame as a pattern supported by research (S1/S2) and reporting (S15) — not a single named canceled product unless separately sourced. |
| 10 | An app store let outside developers build the software; it launched July 10, 2008 with 500 apps. | S9 (Official) | "Thousands of developers" is later growth — narrate the model. If a launch number appears, it is **500 apps** tied to S9, not "thousands." |
| 13 | Symbian had accumulated complexity/technical debt that slowed new development. | S1, S2, S14 (analysis) | Present as analysis; keep comparative ("seemed to take longer"), no invented metric. |
| 14 | By early 2011 Nokia had new leadership (Stephen Elop). | S3, S4 | Supported via the memo's authorship; keep to "new leadership" without an unsourced start-date claim. |
| 16 | Nokia bet on a Microsoft/Windows Phone partnership and moved away from its own software, including the strategically unsupported MeeGo. | S16 (MeeGo unsupported), S4/S5 (context) | Frame the Windows Phone bet and the MeeGo abandonment carefully; a direct 2011 partnership-announcement source should be added before detailed assertion. |
| 18 | The N9 (MeeGo) was a credible product on a path Nokia had already decided not to back. | S16 (analysis) | Frame as "a credible late path that lacked strategic commitment," **not** as guaranteed salvation and **not** as "reviewers universally loved it" unless review sources are added. |
| 22 | Nokia's core failure was internal speed/fear/technical debt, not stupidity. | S1, S2, S14 | The episode's interpretive thesis — supported as research/analysis; present as an argument the evidence supports, not omniscient fact. |

---

## C — Use Only If Attributed

Keep the claim, but name who reported or researched it. Attribution converts it from asserted fact to cited report.

| # | Claim | Source(s) | Attribution to use |
|---|-------|-----------|--------------------|
| 1 | Years before the iPhone, Nokia experimented with touchscreen / internet-ready devices. | S15 (Weak, via a former-employee account relayed by NYT) | "According to a former Nokia insider, as reported…" Keep touchscreen/internet experimentation; do NOT extend to an app store (see Claim 2). Not the sole pillar of the episode. |
| 12 | Nokia ran on a culture of fear in which bad news was softened on the way up the hierarchy. | S1, S2 (Academic) | "Researchers who studied Nokia found…" / "INSEAD research describes…". Central claim — state as research/analysis, never as omniscient fact. |
| 15b | The exact wording of the burning-platform memo. | S3 (primary), S4 (corroboration) | Any verbatim quote must be cited to the reporting (S3). Paraphrase is fine unquoted; verbatim only with the citation. |

---

## D — Must Be Rewritten

Original phrasing is not supportable as written. Reframe to the defensible version; do not assert the original.

| # | Original claim | Problem | Rewrite target |
|---|----------------|---------|----------------|
| 2 | Nokia had a pre-Apple **online app-store concept**. | No adequate source; S15 does not clearly establish an app store. High risk. | Rewrite around the safer, sourced idea: Nokia experimented early with **internet/touchscreen devices** but failed to turn that head start into a decisive platform (attributed, per Claim 1). Drop the app-store specific unless independently and strongly sourced. |
| 5 | Nokia was worth **around a quarter of a trillion dollars** at its peak. | No market-cap source in the pack. Exact figure unsupported. | Remove the specific figure. Reframe to a sourced comparative: "one of the most valuable companies in the world" / tie the fall to the verified ~$7.2B sale (S6) rather than an unsourced peak number. |
| 9 | The early iPhone **lagged Nokia on battery life / hardware**. | S8 supports the iPhone's positioning but no spec comparison. | Soften to general, unsourced-safe framing ("an unproven first-generation device") OR add contemporaneous review sources before asserting specific deficits. |

---

## E — Remove If No Stronger Source Is Found

High-risk and currently unsupported. If not upgraded before the rewrite pass, cut (using the D-bucket fallback where one exists).

| # | Claim | Why it's here | Fallback |
|---|-------|---------------|----------|
| 2 | Pre-Apple online app-store concept. | Weak/insufficient sourcing on a high-risk specific about who invented what first. | Fall back to Claim 1's attributed touchscreen/internet experimentation. Remove the app-store wording entirely if attribution can't be made precise. |
| 5 | ~Quarter-trillion-dollar peak valuation. | No market-cap source. | Remove the number; keep only the sourced comparative fall (D-bucket rewrite). |

---

## F — Safe General Framing (no source required)

Analytical, comparative, or illustrative statements that assert no specific fact. Usable as-is; if any acquires a specific figure or named company on screen, re-classify it as a real claim.

| # | Statement | Note |
|---|-----------|------|
| 19 | After the strategy shift, current-phone sales fell sharply (an "Osborne effect" dynamic). | Analytical framing. If an on-screen sales chart with numbers appears, that chart's data becomes a new sourced claim. |
| 20 | The strategy shift was "one of the most studied gambles in business." | Characterization; kept non-superlative ("one of"). |
| 21 | Empire Law: "Hearing the future means nothing if your organization is too slow to act." | The episode's own thesis (project-internal), not an external fact. |
| 23 | Present-day parallels (carmakers, chip/hardware giants, banks) facing the same see-it-but-can't-move pattern. | Illustrative; no company named on screen. Naming one on screen spawns a sourced claim. |

---

## Rollup

- **Directly safe (A):** Claims 8, 11, 15a, 17a, 17b, 3 — including the exact figures ~$7.2B, ~$7.6B, and the exact burning-platform quote, each tied to its source.
- **Cautious phrasing (B):** Claims 4, 6, 7, 10, 13, 14, 16, 18, 22 — usable with their qualifiers (especially the 40% "estimated device market share" scope).
- **Attribute (C):** Claims 1, 12, 15b — the prototype (as reported), the fear culture (as INSEAD research), and any verbatim memo quote (cited).
- **Rewrite (D):** Claims 2, 5, 9 — app-store concept, peak-valuation figure, iPhone spec-lag.
- **Remove if not upgraded (E):** Claims 2, 5 — the app-store concept and the peak-valuation figure.
- **Framing (F):** Claims 19, 20, 21, 23 — no source required.

This classification is the input to the rewrite pass. The script remains BLOCKED for production until the D/E claims are rewritten or removed and the High-risk rows are confirmed against the source text with human approval recorded (see the ledger's pre-publication gate).
