#!/bin/bash

# ============================================
# NIX BROWSER — Branding Change Script
# Brave → Nix replacement (UI only, safe)
# ============================================

echo "🚀 Nix Browser Branding Script Starting..."
echo "============================================"

# Only these folders will be touched
TARGET_DIRS=(
  "app"
  "installer"
  "browser/ui"
)

# Only these file types
FILE_TYPES=(
  "*.grd"
  "*.grdp"
  "*.html"
  "*.json"
  "*.txt"
  "*.md"
)

do_replace() {
  local file=$1
  sed -i 's/Brave Browser/Nix Browser/g' "$file"
  sed -i 's/Brave browser/Nix browser/g' "$file"
  sed -i 's/"Brave"/"Nix"/g' "$file"
  sed -i 's/>Brave</>Nix</g' "$file"
  sed -i 's/Brave Software, Inc/Nix Technologies/g' "$file"
  sed -i 's/Brave Software/Nix Technologies/g' "$file"
  sed -i 's/brave\.com/nixbrowser.in/g' "$file"
  sed -i 's/Browse privately/Your Web, Your Rules/g' "$file"
  sed -i 's/Browse Privately/Your Web, Your Rules/g' "$file"
  echo "✅ Done: $file"
}

echo ""
echo "📁 Scanning files..."
echo ""

count=0

for dir in "${TARGET_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    for ext in "${FILE_TYPES[@]}"; do
      while IFS= read -r -d '' file; do
        do_replace "$file"
        ((count++))
      done < <(find "$dir" -name "$ext" -print0)
    done
  else
    echo "⚠️  Folder not found: $dir (skip)"
  fi
done

echo ""
echo "============================================"
echo "✅ Branding Change Complete!"
echo "📄 Total files changed: $count"
echo "============================================"
echo ""
echo "🔥 Brave → Nix | Done!"
echo "🌐 Website: nixbrowser.in"
echo "🏢 Company: Nix Technologies"
echo "📱 Browser: Nix Browser"
echo ""
echo "Next step: GitHub Actions se build karo! 🚀"
