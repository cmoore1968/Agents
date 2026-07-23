# Workflow: Data Reconciliation

Blueprint for resolving conflicting figures before they ship in any
deliverable.

1. Invoke the `data-auditor` agent against the target document and its
   sources.
2. For each conflict: state both figures, both sources, and which venture
   it belongs to.
3. Stop and surface every conflict to Chris. Do not average, round, or
   silently pick one (myrules.md rule 4).
4. Once Chris resolves a conflict, log the resolved figure and source in
   `.claude/memory/decisions.md` so it doesn't reopen next time.
5. Only then does the deliverable move forward.
