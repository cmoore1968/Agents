# Agents

Chris's Cowork configuration repo. Claude reads these files automatically at the start of every session.

## Structure

- **`CLAUDE.md`** — global instructions, read before any task.
- **`CLAUDE.local.md`** — personal, machine-specific overrides. Gitignored, never committed.
- **`AGENTS.md`** — the subagent roster: what each one does, and the handoff order between them.
- **`Safe/`** — the only folder Claude works in by default.
  - `aboutme.md` — who Chris is, his three ventures, daily work, tools.
  - `myrules.md` — always/never rules, locked facts, workflow signals.
  - `myvoice.md` — spartan writing style and voice samples.
- **`.claude/`** — Claude Code project configuration. The explicit exception to the Safe-folder boundary.
  - `settings.json` — wires up the hooks below. `settings.local.json` (gitignored) is for personal overrides.
  - `rules/` — modular rule files (voice, safe-folder boundary, data integrity, locked facts) referenced from `CLAUDE.md`.
  - `commands/` — slash commands: `/grade`, `/ghost`, `/spartan-pass`.
  - `skills/` — auto-triggered checks: `data-conflict-check`, `locked-facts-guard`.
  - `agents/` — subagent definitions (`research`, `deck-builder`, `data-auditor`); see `AGENTS.md` for the roster.
  - `hooks/` — deterministic enforcement: blocks destructive bash commands and writes outside `Safe/`.
  - `memory/` — persistent context, decisions log, and progress log across sessions.
  - `workflows/` — multi-step blueprints (deck build, ghostwrite, data reconciliation).
- **`.github/workflows/markdown-lint.yml`** — CI check that lints all `.md` files on push and PR to `main`.
- **`.markdownlint.json`** — lint rule overrides (line-length disabled).
