#!/usr/bin/env bash
# Bootstrap docs/specs + viewer into the current project (run from project root).
set -euo pipefail

ROOT="$(pwd)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ ! -f "$SKILL_DIR/SKILL.md" ]]; then
  echo "Could not find skill root next to scripts/. Set up manually from templates/."
  exit 1
fi

mkdir -p "$ROOT/docs/specs" "$ROOT/scripts"

copy_if_missing() {
  local src="$1" dest="$2"
  if [[ -e "$dest" ]]; then
    echo "skip (exists): $dest"
  else
    cp "$src" "$dest"
    echo "wrote: $dest"
  fi
}

copy_if_missing "$SKILL_DIR/templates/README.md" "$ROOT/docs/specs/README.md"
copy_if_missing "$SKILL_DIR/templates/STATUS.md" "$ROOT/docs/specs/STATUS.md"
copy_if_missing "$SKILL_DIR/templates/GOALS.md" "$ROOT/docs/specs/GOALS.md"
copy_if_missing "$SKILL_DIR/templates/status.html" "$ROOT/docs/specs/status.html"
copy_if_missing "$SKILL_DIR/templates/view.html" "$ROOT/docs/specs/view.html"
copy_if_missing "$SKILL_DIR/templates/spec.md" "$ROOT/docs/specs/01-example.md"
copy_if_missing "$SKILL_DIR/scripts/build-spec-viewer.mjs" "$ROOT/scripts/build-spec-viewer.mjs"

if [[ -f "$ROOT/package.json" ]]; then
  if command -v node >/dev/null 2>&1; then
    node -e "
      const fs = require('fs');
      const p = 'package.json';
      const j = JSON.parse(fs.readFileSync(p, 'utf8'));
      j.scripts = j.scripts || {};
      if (!j.scripts['specs:html']) {
        j.scripts['specs:html'] = 'node scripts/build-spec-viewer.mjs';
        fs.writeFileSync(p, JSON.stringify(j, null, 2) + '\n');
        console.log('added npm script specs:html');
      } else {
        console.log('skip (exists): npm script specs:html');
      }
    "
  else
    echo "Add to package.json scripts: \"specs:html\": \"node scripts/build-spec-viewer.mjs\""
  fi
else
  echo "No package.json — add specs:html script when you have one."
fi

echo ""
echo "Next:"
echo "  1. Replace {{PRODUCT}}, {{GOAL*}}, {{DATE}} placeholders"
echo "  2. Write Goal 1 + 3 Key Results in docs/specs/GOALS.md"
echo "  3. Paste templates/AGENTS.md into AGENTS.md"
echo "  4. npm run specs:html && open docs/specs/status.html"
echo ""
echo "Optional: clone into .cursor/skills/goal-driven-specs/ for the team."
echo "  https://github.com/maikbehring/goal-driven-specs"
