# Agents

Chris's Cowork configuration repo. Claude reads these files automatically at the start of every session.

## Structure

- **`CLAUDE.md`** — global instructions, read before any task.
- **`Safe/`** — the only folder Claude works in by default.
  - `aboutme.md` — who Chris is, his three ventures, daily work, tools.
  - `myrules.md` — always/never rules, locked facts, workflow signals.
  - `myvoice.md` — spartan writing style and voice samples.
- **`.claude/commands/`** — workflow commands built on the Safe files.
  - `/ghost` — ghost-write in Chris's voice.
  - `/grade` — honest letter grade plus specific fixes.
  - `/spartan` — cut 30%+ of the word count, keep every fact.
- **`.claude/skills/`, `.claude/agents/`** — 18 business skills and 2 agents copied from ECC v2.2.3. The full plugin is off. See `.claude/ECC-NOTICE.md`.
- **`.github/workflows/markdown-lint.yml`** — CI check that lints all `.md` files on push and PR to `main`.
- **`.markdownlint.json`** — lint rule overrides (line-length disabled).
