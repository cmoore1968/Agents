# Project Context

Source of truth for who Chris is and what he's running: `Safe/aboutme.md`.
This file is a pointer, not a copy — read `aboutme.md` for the actual
details on the three ventures (EURPAC, Sugar Hill Pizzeria, commercial real
estate) so nothing goes stale in two places.

## What this repo is

Chris's Cowork configuration repo. It's read at the start of every session,
and it's the control layer for how Claude works with Chris — not a
software codebase.

## Working boundary

Default: work only inside `Safe/`. The `.claude/` directory and root-level
config files (`CLAUDE.md`, `AGENTS.md`, `README.md`) are the one explicit
exception — that's Claude's own configuration, maintained here by design.
