# Rule: Safe Folder Boundary

Default working boundary: `Safe/`. Enforced by `.claude/hooks/enforce-safe-folder.sh`
on every `Write`/`Edit` call.

Explicit exceptions (Chris has pointed Claude here by design):

- `.claude/**` — this project's own configuration
- `CLAUDE.md`, `CLAUDE.local.md`, `AGENTS.md`, `README.md`, `.gitignore` — repo-root config
- `.github/**` — CI config

Anything else outside `Safe/` needs Chris's explicit go-ahead first (myrules.md
rule 6). The hook blocks it by default — it doesn't ask for you.
