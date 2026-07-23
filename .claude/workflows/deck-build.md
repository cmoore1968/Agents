# Workflow: Deck Build

Blueprint for building a sales deck (e.g. EURPAC "Why EURPAC 2026," S/4HANA
positioning).

1. **Research** — invoke the `research` agent for market/competitor/client
   data. Findings only, sourced, separated by venture.
2. **Data check** — run the `data-conflict-check` skill (or the
   `data-auditor` agent for a full pass) on every figure before it reaches
   a slide.
3. **Draft** — invoke the `deck-builder` agent to structure and write slide
   copy in Chris's voice (`Safe/myvoice.md`).
4. **Grade** — run `/grade` on the draft. Honest letter grade, specific
   fixes.
5. **Spartan pass** — run `/spartan-pass` to cut 30%+ once content is
   locked.
6. **Stop.** Chris reviews and sends. Nothing in this workflow publishes or
   emails on its own (myrules.md "Never" rule 4).
