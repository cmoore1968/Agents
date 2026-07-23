#!/usr/bin/env bash
# PreToolUse hook on Write/Edit. Enforces myrules.md rule 6 ("work only in
# Safe/ unless explicitly pointed elsewhere") deterministically. The explicit
# exceptions below are this repo's own configuration — the one place Chris
# has already pointed Claude to by building this structure.
set -euo pipefail

input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // empty')

[[ -z "$file_path" ]] && exit 0

repo_root=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
case "$file_path" in
  /*) rel="${file_path#"$repo_root"/}" ;;
  *) rel="$file_path" ;;
esac

case "$rel" in
  Safe/*|.claude/*|CLAUDE.md|CLAUDE.local.md|AGENTS.md|README.md|.gitignore|.github/*)
    exit 0 ;;
  *)
    echo "Blocked: '$rel' is outside Safe/ and outside this repo's own config files. Ask Chris before writing here (myrules.md rule 6)." >&2
    exit 2 ;;
esac
