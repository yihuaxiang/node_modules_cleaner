#!/bin/bash
set -euo pipefail

basedir="$(pwd)"
echo "[nmc] scanning $basedir"

find "$basedir" -mindepth 1 -maxdepth 2 -type d -name node_modules | while IFS= read -r module; do
  echo "[nmc] cleaning $module"
  du -sh "$module" || true
  rm -rf "$module"
done

echo "[nmc] done"
