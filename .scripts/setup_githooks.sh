#!/bin/bash

repo_root=$(git rev-parse --show-toplevel)
hook_path="$repo_root/.scripts/githooks"

if [ -d "$hook_path" ]; then
  echo "Setting execute permissions for Git hooks..."
  find "$hook_path" -type f -print0 | xargs -0 chmod +x
  echo "✅ Execute permissions set for all hooks in: $hook_path"
else
  echo "⚠️ Warning: Git hooks directory '$hook_path' not found. Please ensure it exists."
fi

git config core.hooksPath "$hook_path"

echo "✅ Git hooks path set to: $hook_path"
