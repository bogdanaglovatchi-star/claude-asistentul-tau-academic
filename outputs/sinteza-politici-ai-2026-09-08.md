# Comparative Synthesis: Policies on the Use of AI in Research Publishing

Prepared: 8 September 2026. Sources: the five policy summaries in `scenarii/politici-ai-cercetare/`,
each verified against its original document (see `documente-originale/` and `SURSE.md` for links and
verification dates). Every row below cites the source file it is drawn from, so it can be traced back
to the original text.

## Comparative table

| Source | Can AI be listed as an author? | Must AI use be disclosed? | Where is it disclosed? | Who is responsible for the content? |
|---|---|---|---|---|
| COPE (`01-COPE.md`) | No — AI tools cannot meet authorship requirements, as they cannot take responsibility for the work or hold copyright. | Yes, whenever AI was used in writing, images/graphics, or data collection and analysis. | Materials and Methods (or an equivalent section). | Authors are fully responsible for the entire manuscript, including AI-produced parts. |
| ICMJE (`02-ICMJE.md`) | No — chatbots cannot be responsible for accuracy, integrity, and originality, which authorship requires. | Yes, at submission; described in the cover letter and, where applicable, in the manuscript. | Acknowledgment (writing assistance) or Methods (data collection, analysis, figure generation). | Humans are ultimately responsible for reviewing and ensuring the accuracy of AI-assisted content. |
| Nature/Springer Nature (`03-Nature-Springer.md`) | No — human accountability is described as non-transferable. | Depends on a three-tier risk framework: encouraged at the "green" (low-risk, assistive) tier, required at "amber" (evaluative/interpretive), prohibited outright at "red". | Not tied to one fixed section; disclosure expectations scale with the risk tier of the use. | Authors remain integrally responsible for originality, accuracy, and integrity. |
| JAMA Network (`04-JAMA.md`) | No — nonhuman technologies "do not qualify for authorship" (2023 position, reaffirmed in the 2026 guidance). | Yes, except for basic grammar/spelling checks, which are exempt. | Acknowledgment section, naming the platform, version, manufacturer, dates of use, and a description of use. | Authors must take responsibility for the integrity of AI-generated content; four uses are explicitly prohibited (see "Where they differ" below). |
| Romania/EU framework (`05-Romania.md`) | No — "AI systems are neither authors nor co-authors" (EU living guidelines); the Romanian code frames this as a reporting obligation rather than a standalone misconduct article. | Yes — required both by the Romanian CDI code of ethics (OMEC 6.886/2025) and the EU AI Regulation (1.689/2024). | Not tied to a single named section; the Romanian code requires disclosure "in a manner compatible with disciplinary norms" that supports verification or replication. | Human researchers remain accountable; concealing AI use is explicitly listed as an unacceptable practice. |

## Points of consensus

1. **AI cannot be listed as an author, under any of the five sources.** The stated reason is
   consistent throughout: authorship requires the capacity to take responsibility for the work, assert
   the absence of conflicts of interest, and hold copyright — none of which an AI system can do
   (`01-COPE.md`; `02-ICMJE.md`; `04-JAMA.md`; `05-Romania.md`).
2. **Disclosure/transparency is required wherever AI meaningfully contributed to the work.** All five
   sources treat non-disclosure as a problem in its own right, separate from any issue with the AI
   output itself (`01-COPE.md`; `02-ICMJE.md`; `03-Nature-Springer.md`; `04-JAMA.md`; `05-Romania.md`).
3. **Human responsibility for the final content is non-transferable.** Whatever AI assistance was used,
   the human author or researcher remains accountable for accuracy, integrity, and originality
   (`01-COPE.md`; `02-ICMJE.md`; `03-Nature-Springer.md`; `05-Romania.md`).
4. **Fabricated or AI-generated citations are explicitly recognised as a risk.** ICMJE, JAMA, and the EU
   living guidelines each name this problem directly, with JAMA citing concrete cases of "realistic-looking
   references... that do not exist" (`02-ICMJE.md`; `04-JAMA.md`; `05-Romania.md`).

## Where they differ

- **Where disclosure belongs.** ICMJE and JAMA specify a fixed location (cover letter/Methods;
  Acknowledgment, respectively), while Nature/Springer Nature ties the expectation to a risk tier rather
  than a fixed section, and the Romanian/EU framework leaves the "where" open, requiring only that
  disclosure be compatible with disciplinary norms (`02-ICMJE.md`; `03-Nature-Springer.md`;
  `04-JAMA.md`; `05-Romania.md`).
- **The old "copy-editing" exemption is disappearing, but unevenly.** Nature/Springer Nature has removed
  the former exemption for AI-assisted copy editing altogether — even light language polishing now sits
  at the "green" tier, where disclosure is *encouraged* rather than exempt. JAMA still exempts "basic
  grammar and spelling checks" specifically, but nothing broader (`03-Nature-Springer.md`;
  `04-JAMA.md`).
- **JAMA is the most explicit about prohibited uses.** Its 2026 guidance names four uses that are simply
  not permitted: generating or formatting references, drafting opinion pieces/letters/comments,
  submitting AI-created or AI-manipulated clinical images, and non-disclosure once discovered
  (`04-JAMA.md`). None of the other four sources itemise prohibited uses to this level of detail.
- **Peer review guidance varies in emphasis.** ICMJE addresses reviewers directly (confidentiality may
  bar uploading a manuscript to a tool with no confidentiality guarantee); Nature/Springer Nature
  forbids uploading manuscripts to unsecured or public AI tools; the EU living guidelines recommend
  reviewers largely abstain from substantial generative AI use in peer review specifically, to avoid
  unfair advantage and protect colleagues' unpublished work (`02-ICMJE.md`; `03-Nature-Springer.md`;
  `05-Romania.md`).
- **Legal weight differs by jurisdiction.** The Romanian/EU framework is the only one of the five
  grounded in binding law — the EU AI Regulation (1.689/2024) and the Romanian CDI code (OMEC
  6.886/2025) — rather than editorial or professional-body policy (`05-Romania.md`).

## Practical note

The policy of the actual destination — the journal you are submitting to, the funder requesting the
report, your own university — takes precedence over this general synthesis. The five sources above are
the landscape; the one that applies to a specific submission should be checked at its own source. A
dedicated procedure (`declaratie-ai`) is available for drafting the actual AI-use disclosure statement
once a report or manuscript is being finalised.
