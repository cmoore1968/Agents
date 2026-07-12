# Agents

Chris's Cowork configuration repo. Claude reads these files automatically at the start of every session.

## Structure

- **`CLAUDE.md`** — global instructions, read before any task.
- **`Safe/`** — the only folder Claude works in by default.
  - `aboutme.md` — who Chris is, his three ventures, daily work, tools.
  - `myrules.md` — always/never rules, locked facts, workflow signals.
  - `myvoice.md` — spartan writing style and voice samples.
- **`.github/workflows/markdown-lint.yml`** — CI check that lints all `.md` files on push and PR to `main`.
- **`.markdownlint.json`** — lint rule overrides (line-length disabled).
