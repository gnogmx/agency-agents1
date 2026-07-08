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

### Step 3 — Claim risk review
Review the ledger as its own pass:
- Confirm every specific in the script is present in the ledger (cross-check).
- Assign/confirm status (Verified in project source / Needs external verification / Remove if not verified / Safe general framing) and risk level (High/Medium/Low).
- Flag high-risk specifics about real people and companies for mandatory external verification before publish.
- For any "Remove if not verified" claim, confirm a safer fallback is named so the narration survives if verification fails.

### Step 4 — Rewrite pass
Revise the narration so its phrasing matches each claim's ledger status:
- Contested/"needs verification" claims get hedging language ("reportedly," "by most accounts," "researchers who studied this found…"), never flat assertion.
- Remove banned phrasing; confirm no "this proves" without a verifiable ledger entry; confirm the subject is never called stupid and the external disruptor stays a catalyst.
- Apply the delete test to hit runtime; tighten sentences for spoken delivery.

### Step 5 — Human approval before production
Present the script + ledger together. A human approves, requests changes, or rejects. The reviewer specifically confirms: the hook works, the layers are clean, the runtime is real, and every High-risk claim is flagged for verification.
- Only an approved script + ledger unlocks the script-production workflow.
- Publication-time rule: High-risk and "Needs external verification" claims must be verified (or reframed/cut per their fallback) before the Publisher goes live — approval to produce is not approval to publish unverified specifics.

## Outputs

| Artifact | Location |
|----------|----------|
| Production-ready narration script | `outputs/scripts/[slug]-script-v1.md` |
| Fact-check ledger | `outputs/scripts/[slug]-fact-check-ledger.md` |

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
