#!/bin/bash

echo "🔹 Resetting Git repository to last commit..."
git reset --hard HEAD

echo "🔹 Removing untracked files and folders..."
git clean -fdx

# Add any extra folders or files to remove below:
EXTRA_CLEAN=(
  "node_modules"
  "__pycache__"
  "build"
  ".pytest_cache"
  ".venv"
)

echo "🔹 Removing extra folders..."
for folder in "${EXTRA_CLEAN[@]}"; do
  if [ -d "$folder" ]; then
    echo "Removing $folder"
    rm -rf "$folder"
  fi
done

echo "✅ Cleanup complete!"
