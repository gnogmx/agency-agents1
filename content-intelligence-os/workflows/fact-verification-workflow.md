# Workflow — Fact Verification

The process that takes a drafted script and its fact-check ledger, verifies every specific claim against an evidence base, classifies each claim, and prepares the rewrite pass — before any production begins. It runs inside the episode-script workflow, between the draft and the rewrite pass.

**Purpose:** guarantee that no exact number, quote, or named claim about a real company or person reaches production without a source behind it — and that useful-but-unproven claims are downgraded and reworded rather than either asserted or silently deleted.

This workflow classifies and instructs. It does NOT rewrite the script, produce code, or generate thumbnails. Its outputs are a source pack, a verified-claims classification, an updated ledger, and a clear production gate.

## When It Runs

- After a script draft and its fact-check ledger exist (`brain/scriptwriting-system.md` Step 2).
- Before the rewrite pass and human approval in `workflows/episode-script-workflow.md`.
- Re-run whenever a claim is added or a source changes.

## Inputs

- The draft script (`outputs/scripts/[slug]-script-v1.md`)
- The fact-check ledger (`outputs/scripts/[slug]-fact-check-ledger.md`)
- `brain/fact-verification-system.md` — the six classifications, source tiers, and the production gate
- The designated source pack for the episode (named sources to obtain and confirm)

## Sequence

### Step 1 — Assemble the source pack
List every source the episode will lean on. For each: name, publisher, source-quality tier (Official / Academic / Major media / Secondary analysis / Weak source), and exactly which claims it supports. Record it in `outputs/scripts/[slug]-source-pack.md`.
- Rule: a claim with no source in the pack cannot be classified higher than **Needs stronger source**.

### Step 2 — Map each ledger claim to its sources
For every claim in the ledger, attach the pack sources that actually support it. If the best source is Secondary or Weak, the claim cannot be **Verified** — at most **Verified with caution** or **Use only as reported**.
- Rule: a source may only be attached to a claim it genuinely makes. No stretching.

### Step 3 — Classify each claim
Assign exactly one of the six verification statuses (`brain/fact-verification-system.md`). Then set the four gates per claim:
- Narration allowed? (yes / qualified / rewritten-only / no)
- On-screen text allowed? (yes / no)
- Exact number or quote allowed? (yes-tied-to-source / no)
- Rewrite instruction (the precise change needed so phrasing matches evidence)

### Step 4 — Sort into decision buckets
Produce `outputs/scripts/[slug]-verified-claims-v1.md`, sorting every claim into:
- **A. Safe to use directly**
- **B. Safe to use with cautious phrasing**
- **C. Use only if attributed**
- **D. Must be rewritten**
- **E. Remove if no stronger source is found**

(Plus a clearly-labeled group for pure framing statements that assert no specific fact.)

### Step 5 — Update the ledger
Write the new verification columns back into `outputs/scripts/[slug]-fact-check-ledger.md`: source category, verification status, rewrite instruction, narration-allowed, on-screen-allowed, exact-number/quote-allowed. The ledger becomes the single control surface for the rewrite pass.

### Step 6 — Check the production gate
Confirm the script cannot proceed until every gate condition holds (High-risk claims resolved, all exact numbers/quotes sourced, weak claims attributed or removed, no original Needs-stronger-source/Remove-or-rewrite claim surviving, human approval recorded). Report BLOCKED or CLEARED with the exact reasons.

## Outputs

| Artifact | Location |
|----------|----------|
| Source pack with quality tiers | `outputs/scripts/[slug]-source-pack.md` |
| Verified-claims classification (A–E) | `outputs/scripts/[slug]-verified-claims-v1.md` |
| Updated ledger with verification columns | `outputs/scripts/[slug]-fact-check-ledger.md` |
| Gate verdict (BLOCKED / CLEARED) | recorded in the ledger's pre-publication gate |

## Rules

1. **No source, no verification.** A claim without a supporting source tops out at Needs stronger source.
2. **Classification ≤ best source.** A claim can be no stronger than its strongest genuine source allows.
3. **Gate the specifics.** Exact numbers and quotes appear only when the ledger ties them to a source and marks them allowed.
4. **Downgrade, don't delete.** Strong-but-unproven claims are reworded/attributed, not dropped — unless high-risk and unsupportable, then reframed to a defensible claim.
5. **Analysis stays analysis.** Interpretive claims are attributed as research/reporting, never narrated as omniscient fact.
6. **The gate is binding.** No production while any gate condition fails, no matter the writing quality.

## Failure Modes to Watch

- **Optimistic classification** — labeling a claim Verified when only a Secondary/Weak source supports it.
- **Source stretching** — attaching a source to a claim it doesn't actually make.
- **Ungated leakage** — an exact figure or quote surviving without a ledger source tie.
- **Silent deletion** — cutting a useful claim instead of downgrading and rewording it.
- **Gate erosion** — proceeding with an unresolved High-risk row because the episode is "basically fine."
