#!/usr/bin/env bash
# BEACONSignal — one-shot GitHub push
# Usage: bash setup.sh YOUR_GITHUB_USERNAME

set -e

USERNAME="${1:-YOUR_USERNAME}"
REPO="beacon-signal"

echo "Setting up BEACONSignal → github.com/$USERNAME/$REPO"

git init
git add .
git commit -m "Initial BEACONSignal deploy"
git branch -M main
git remote add origin "https://github.com/$USERNAME/$REPO.git"
git push -u origin main

echo ""
echo "✓ Pushed to GitHub"
echo ""
echo "Next steps:"
echo "  1. Go to https://github.com/$USERNAME/$REPO/settings/secrets/actions"
echo "     Add secret: CLAUDE_API_KEY = <your Anthropic key>"
echo ""
echo "  2. Go to https://github.com/$USERNAME/$REPO/settings/pages"
echo "     Set Source → GitHub Actions"
echo ""
echo "  3. Trigger: https://github.com/$USERNAME/$REPO/actions"
echo "     → 'Build & Deploy BEACONSignal' → Run workflow"
echo ""
echo "  Dashboard URL: https://$USERNAME.github.io/$REPO/"
