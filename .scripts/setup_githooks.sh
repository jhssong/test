#!/bin/bash

# move to the git project root no matter where the script is run
repo_root=$(git rev-parse --show-toplevel)
hook_path="$repo_root/.scripts/githooks"

git config core.hooksPath "$hook_path"

echo "✅ Git hooks path set to: $hook_path"

#git config core.hooksPath githooks
#echo "✅ Git hook path configured"

