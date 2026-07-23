#!/usr/bin/env bash
# PreToolUse hook on Bash. Blocks destructive commands deterministically —
# enforces myrules.md rule 5 ("ask before destructive actions") without
# depending on the model remembering to ask.
set -euo pipefail

input=$(cat)
command=$(echo "$input" | jq -r '.tool_input.command // empty')

[[ -z "$command" ]] && exit 0

pattern='rm[[:space:]]+(-[a-zA-Z]*f[a-zA-Z]*r|-[a-zA-Z]*r[a-zA-Z]*f)|git[[:space:]]+push[[:space:]]+.*--force|git[[:space:]]+reset[[:space:]]+--hard|git[[:space:]]+clean[[:space:]]+-[a-zA-Z]*f|git[[:space:]]+branch[[:space:]]+-D|--no-verify'

if echo "$command" | grep -qE "$pattern"; then
  echo "Blocked: destructive command detected: '$command'. Ask Chris before running this (myrules.md rule 5)." >&2
  exit 2
fi

exit 0
