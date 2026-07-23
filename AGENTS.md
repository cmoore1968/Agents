# Agents

Subagents available in this repo, their jobs, and how they hand off. Claude reads
this before delegating any multi-step task.

| Agent | File | Job | Tools |
| --- | --- | --- | --- |
| `research` | `.claude/agents/research.md` | Gather and summarize sourced findings across any venture. Read-only. | Read, Grep, Glob, WebFetch, WebSearch |
| `deck-builder` | `.claude/agents/deck-builder.md` | Draft EURPAC sales deck structure and copy. | Read, Write, Edit, Glob, Grep |
| `data-auditor` | `.claude/agents/data-auditor.md` | Reconcile figures across sources; report conflicts, never resolve them silently. | Read, Grep, Glob |

## Handoff protocol

1. `research` runs first on anything needing outside data. Output: sourced findings, separated by venture.
2. `data-auditor` runs on anything with figures from more than one source, before drafting. Output: a conflict list, or "zero conflicts."
3. `deck-builder` (or the main session, for non-deck output) drafts using `research` findings, only after `data-auditor` reports zero unresolved conflicts.
4. Nobody sends or publishes. Chris reviews everything before it goes out (`Safe/myrules.md`, "Never" rule 4).

See `.claude/workflows/` for the step-by-step blueprints these agents plug into.
