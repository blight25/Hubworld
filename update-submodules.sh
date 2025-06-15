#!/usr/bin/env bash
set -euo pipefail

# 1. Fetch & merge the latest for each submodule
echo "Updating all submodules…"
git submodule update --remote --merge

# 2. Stage any pointer changes
echo "Staging submodule pointer bumps…"
git add .gitmodules 2_Projects/*

# 3. If there’s anything to commit, do so
if ! git diff --cached --quiet; then
  msg="chore: update all submodules to latest"
  echo "Committing: $msg"
  git commit -m "$msg"
  echo "Pushing to origin…"
  git push
else
  echo "No submodule updates detected; nothing to commit."
fi