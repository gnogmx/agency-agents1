# Fact Verification System

The system that verifies script claims against evidence BEFORE production. It sits between a drafted script + its fact-check ledger (`brain/scriptwriting-system.md`) and the production line. Its job is to classify every specific claim by how strongly the evidence supports it, decide how the claim may appear (narration, on-screen text, exact numbers/quotes), and prepare — but not perform — the rewrite pass.

This layer does not rewrite the script, produce motion-graphics/Remotion code, or generate thumbnails. It classifies. A correct classification is what lets the rewrite pass and the human approval happen safely.

## Core Principles

1. **A source proves only what it actually supports.** Never stretch a source to cover a claim it doesn't make. An article about a memo confirms the memo — not the strategy decisions that followed it.
2. **Analysis is not fact.** Academic and journalistic *interpretation* (why Nokia was slow, what culture caused it) is cited as analysis/research, never narrated as omniscient truth.
3. **Exact numbers and exact quotes are gated.** A specific figure or a verbatim quote may appear ONLY when the ledger ties it to a supporting source and marks it allowed. Everything else uses approximate or paraphrased language.
4. **Strong claims are not deleted automatically.** A claim that needs a better source is downgraded and reworded, not silently dropped. It is only removed if it is both high-risk AND cannot be attributed or reframed to something defensible.
5. **Attribution rescues weak-but-useful claims.** A reported-but-not-independently-confirmed claim can still be used if it is clearly attributed to who reported it ("according to a former employee, as reported by…"). Attribution changes the claim from "a fact we assert" to "a report we cite" — a lower and honest bar.
6. **Risk scales with the target.** Specific claims about named living people and companies carry the highest scrutiny. Legal and trust damage, not just accuracy, sets the bar.

## The Six Verification Classifications

Every ledgered claim is classified as exactly one of these:

| Classification | Meaning | Narration | On-screen text | Exact number / quote |
|----------------|---------|-----------|----------------|----------------------|
| **Verified** | Directly supported by an official, academic, or major-media source in the pack. | Yes | Yes | Yes — tied to the named source |
| **Verified with caution** | Supported, but only with a qualifier (scope limit, "estimated," date boundary) or as attributed analysis. | Yes, qualified | Yes, qualified | Only the qualified/scoped figure, tied to source |
| **Needs stronger source** | Plausible and useful, but no source in the pack yet confirms it. | Only reworded to remove the unsupported specific | No | No |
| **Use only as reported** | Comes from a secondary or single-origin report (e.g., one outlet citing one former employee). | Yes, but explicitly attributed | Only if attribution fits on screen | No exact figure; quote only if attributing the report |
| **Remove or rewrite** | High-risk and not adequately supported; must be reframed to a defensible claim or cut. | Only the rewritten version | No (original) | No |
| **Safe general framing** | An analytical, comparative, or illustrative statement — not a specific factual claim. | Yes | Yes | No specific figure unless it becomes a real claim (then re-classify) |

## Source Quality Tiers

Every source is graded so a claim's classification reflects the strength beneath it:

- **Official** — the primary party's own release (company announcement, earnings report, official press release). Strongest for that party's own facts (deal values, launch dates, its own figures).
- **Academic** — peer-reviewed or institution-published research (e.g., INSEAD). Strong for analysis and interviews; cite as research, not omniscient fact.
- **Major media** — established outlets with editorial standards (Guardian, Reuters, Wired, New Yorker). Strong for events and reporting; distinguish their reporting from their analysis.
- **Secondary analysis** — commentary/opinion built on other reporting. Usable as framing or attributed viewpoint, not as primary proof.
- **Weak source** — single-origin, anecdotal, or reported-at-several-removes. Usable only as an attributed report, never as an asserted fact, and never as the sole pillar of an episode.

A claim's classification can be no stronger than its best available source allows. A "Verified" label requires Official, Academic, or Major-media support that directly makes the claim.

## How Classification Drives the Rewrite Pass

The verification layer produces instructions; the (separate) rewrite pass executes them. For each claim, the ledger records:

- **Verification status** (one of the six above)
- **Source category** (which pack sources support it, and their tier)
- **Narration allowed?** / **On-screen allowed?** / **Exact number or quote allowed?**
- **Rewrite instruction** — the exact change needed so the narration's phrasing matches the evidence (add a qualifier, attribute the report, drop a figure, reframe to the safer claim).

The rewrite pass may not harden a "Verified with caution" claim into a flat assertion, may not add a figure the ledger marks disallowed, and may not quote verbatim unless the ledger marks the quote source-supported.

## The Production Gate

A script clears verification for production only when ALL hold:

1. Every **High-risk** claim is **Verified**, **Verified with caution**, **Use only as reported (attributed)**, or has been **rewritten** to a defensible claim.
2. Every exact number in narration or on-screen text is tied to a supporting source in the ledger.
3. Every exact quote is tied to a supporting source and marked quote-allowed.
4. Every **weak/anecdotal** claim is either attributed or removed — none remain as bare assertions.
5. No claim classified **Needs stronger source** or **Remove or rewrite** survives in its original form.
6. **Human approval is recorded**, confirming the reviewer checked the source pack against the High-risk rows.

Until all six hold, the script stays BLOCKED for production, regardless of how good the writing is.

## Failure Conditions

- **Source stretching** — citing a source for more than it states (e.g., using a memo article to "prove" the acquisition price).
- **Analysis laundering** — narrating an academic interpretation as settled fact instead of attributed research.
- **Ungated specifics** — an exact number or verbatim quote in the script with no source tie in the ledger.
- **Silent deletion** — dropping a strong claim instead of downgrading and rewording it.
- **Weak-source pillars** — building a central episode beat on a single anecdotal report without independent confirmation.
- **Gate bypass** — moving to production with an unresolved High-risk row or an unrecorded human approval.
