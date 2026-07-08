# Workflow — Episode Script

The process that turns a LOCKED story blueprint into an approved, fact-reviewed narration script — the last decision stage before production begins. It sits between the story-blueprint workflow (which locks structure) and the script-production workflow (which builds the video). It produces words and a fact ledger; it produces no motion-graphics code, no Remotion, and no thumbnails.

**Purpose:** convert a retention-engineered blueprint into narration strong enough to record as voiceover after fact review — while guaranteeing that every specific claim about a real company or person is tracked and risk-assessed before it can be published.

## When It Runs

- After a story blueprint is LOCKED in the story-blueprint workflow.
- Before the script-production workflow may begin. Production on an unlocked or fact-unreviewed script is forbidden.

## Inputs

- The LOCKED blueprint (`outputs/storyboards/[slug]-story-blueprint.md`) — thesis, contradiction, loops, 9-section architecture, lines to use/ban
- `brain/scriptwriting-system.md` — narration voice, rules, and fact-control law
- `brands/empire-laws/video-format.md` — the canonical 9-section structure and durations
- `brains/empire-laws/brand.md`, `forbidden-patterns.md` — tone and hard bans
- The research corpus and any project-held sources

## Sequence

### Step 1 — Draft narration (against the locked blueprint)
Write the full script, section by section, following the per-section output contract (title, timestamp, narration, on-screen text, visual direction, retention device, transition). Narration only in the narration layer; keep the three layers visually separate. Honor the committed runtime and ~150 wpm.
- Gate: structure must match the locked blueprint exactly. The script realizes the blueprint; it does not re-architect it. Structural changes go back to the blueprint workflow.

### Step 2 — Build the fact-check ledger (in parallel with drafting)
As each specific claim is written — number, quote, date, acquisition amount, internal memo, market share, prototype, executive claim, research finding — add a row to `outputs/scripts/[slug]-fact-check-ledger.md` with: claim, script section, status, evidence needed, risk level, recommended source type, notes.
- Rule: a specific in narration with no ledger row is a defect. The ledger and the script are written together, not after.

### Step 3 — Fact verification & claim risk review
Run the fact-verification workflow (`workflows/fact-verification-workflow.md`) on the draft + ledger, per `brain/fact-verification-system.md`:
- Assemble the episode source pack (`outputs/scripts/[slug]-source-pack.md`) with source-quality tiers (Official / Academic / Major media / Secondary analysis / Weak source) and map each source to the claims it supports.
- Cross-check that every specific in the script has a ledger row.
- Classify each claim (Verified / Verified with caution / Needs stronger source / Use only as reported / Remove or rewrite / Safe general framing) — a claim can be no stronger than its best genuine source.
- Set per claim: narration allowed?, on-screen text allowed?, exact number/quote allowed?, and the rewrite instruction.
- Sort claims into decision buckets A–E (+ framing) in `outputs/scripts/[slug]-verified-claims-v1.md`.
- Write the verification columns back into the ledger.
- Flag every High-risk specific about real people/companies for mandatory source confirmation; confirm each Remove-or-rewrite claim has a named defensible fallback.

### Step 4 — Rewrite pass
Revise the narration so its phrasing matches each claim's ledger status:
- Contested/"needs verification" claims get hedging language ("reportedly," "by most accounts," "researchers who studied this found…"), never flat assertion.
- Remove banned phrasing; confirm no "this proves" without a verifiable ledger entry; confirm the subject is never called stupid and the external disruptor stays a catalyst.
- Apply the delete test to hit runtime; tighten sentences for spoken delivery.

### Step 5 — Production gate + human approval
No script moves to production until ALL of the following hold (the production gate, per `brain/fact-verification-system.md`):
1. **High-risk claims are verified or rewritten** — every High-risk row is Verified, Verified with caution, Use only as reported (attributed), or reworded to a defensible claim. No original Remove-or-rewrite or Needs-stronger-source claim survives.
2. **All exact numbers have sources** — every figure in narration or on-screen text is tied to a supporting source in the ledger and correctly scoped.
3. **All exact quotes have sources** — every verbatim quote is tied to a source and marked quote-allowed; otherwise it is paraphrased.
4. **All weak/anecdotal claims are attributed or removed** — none remain as bare assertions.
5. **Human approval is recorded** — a reviewer confirms the source pack was checked against every High-risk row and the rewrite instructions were applied, and confirms the hook works, the layers are clean, and the runtime is real.

- The gate verdict (BLOCKED / CLEARED) is recorded in the ledger's pre-publication gate.
- Only a CLEARED gate + recorded approval unlocks the script-production workflow.
- Produce ≠ publish: even after the gate clears, the Publisher re-confirms High-risk rows before going live.

## Outputs

| Artifact | Location |
|----------|----------|
| Production-ready narration script | `outputs/scripts/[slug]-script-v1.md` |
| Fact-check ledger (with verification columns) | `outputs/scripts/[slug]-fact-check-ledger.md` |
| Source pack (quality-tiered) | `outputs/scripts/[slug]-source-pack.md` |
| Verified-claims classification (A–E) | `outputs/scripts/[slug]-verified-claims-v1.md` |

## Rules

1. **Blueprint before script.** No narration without a locked blueprint; the script cannot change the structure.
2. **Every specific is ledgered.** No number, date, quote, or named claim in narration without a ledger row.
3. **Phrasing matches status.** Unverified claims are hedged, never asserted flat.
4. **Keep useful claims, flag them.** Verification need is a flag, not a delete — unless the claim is High-risk and non-essential, in which case a fallback is named.
5. **Script + ledger ship together.** One without the other is incomplete.
6. **Produce ≠ publish.** Approval to produce still requires High-risk claims verified before the video goes live.

## Failure Modes to Watch

- **Ledger lag:** writing the whole script, then trying to reconstruct the ledger from memory — specifics get missed. Ledger as you draft.
- **Status/phrasing mismatch:** a "needs verification" claim narrated as settled fact.
- **Structure drift:** the script quietly changing the blueprint's section order or durations.
- **Hype creep:** dramatic pressure pushing narration toward exaggeration or guru language.
- **Enemy takeover:** the external disruptor eating the middle of the script.
- **Runtime denial:** shipping a script whose word count doesn't match the committed length.
