#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# new-post.sh  — create a new Jekyll blog post from the TEMPLATE
#
# Usage:
#   ./scripts/new-post.sh "My Great Post Title"
#
# What it does:
#   1. Slugifies the title  (e.g. "My Great Post" → my-great-post)
#   2. Prefixes today's date (e.g. 2025-06-15-my-great-post.md)
#   3. Copies _drafts/TEMPLATE.md into _posts/ with the date filled in
#   4. Prints the path so you can open it immediately
# ──────────────────────────────────────────────────────────────────────────────
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TEMPLATE="$REPO_ROOT/_drafts/TEMPLATE.md"
POSTS_DIR="$REPO_ROOT/_posts"

# ── Require a title argument ──────────────────────────────────────────────────
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"Post Title\"" >&2
  exit 1
fi

TITLE="$*"
TODAY="$(date +%Y-%m-%d)"

# ── Slugify: lowercase, replace spaces/special chars with hyphens ─────────────
SLUG="$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-//;s/-$//')"

FILENAME="${TODAY}-${SLUG}.md"
DEST="$POSTS_DIR/$FILENAME"

# ── Guard against overwriting ─────────────────────────────────────────────────
if [[ -f "$DEST" ]]; then
  echo "File already exists: $DEST" >&2
  exit 1
fi

# ── Copy template and substitute date & title ─────────────────────────────────
sed \
  -e "s|YYYY-MM-DD|$TODAY|g" \
  -e "s|Your post title here|$TITLE|g" \
  "$TEMPLATE" > "$DEST"

echo "Created: $DEST"
echo ""
echo "Next steps:"
echo "  1. Edit $DEST"
echo "  2. Update categories/tags and excerpt"
echo "  3. git add $DEST && git commit -m 'Add post: $TITLE'"
echo "  4. git push"
