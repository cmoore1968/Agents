# Decisions Log

Append new entries at the top. One entry per decision — date, what changed, why.

## 2026-07-23 — Adopted the Claude Code project structure

Added `.claude/` (rules, commands, skills, agents, hooks, memory, workflows)
and `AGENTS.md` at repo root, per Chris's request to build out the standard
Claude Code project layout. `Safe/` stays the default working boundary;
`.claude/` and root config files are the explicit exception, enforced by
`.claude/hooks/enforce-safe-folder.sh`.

Deliberately skipped: `.mcp.json`. This session has MCP integrations
available (GitHub, Slack, Notion, Postman, Zapier, Adobe, Canva, Docusign,
Gamma), but they're provisioned by the Cowork platform, not by a
project-scoped `.mcp.json` file here. Adding one with placeholder server
configs would be fabricated content — skipped rather than guessed at.
Revisit if Chris wants project-scoped MCP servers declared in-repo.
