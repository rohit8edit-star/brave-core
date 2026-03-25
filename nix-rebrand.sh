#!/bin/bash

echo "🚀 Nix Branding Starting..."

# Poori repo mein har jagah replace karega
find . -type f \( \
  -name "*.grd" -o \
  -name "*.grdp" -o \
  -name "*.html" -o \
  -name "*.json" -o \
  -name "*.xml" -o \
  -name "*.txt" -o \
  -name "*.md" -o \
  -name "*.cc" -o \
  -name "*.h" -o \
  -name "*.mm" -o \
  -name "*.py" \
\) | xargs sed -i \
  -e 's/Brave Browser/Nix Browser/g' \
  -e 's/Brave browser/Nix browser/g' \
  -e 's/BRAVE BROWSER/NIX BROWSER/g' \
  -e 's/Brave Software, Inc\./Nix Technologies/g' \
  -e 's/Brave Software, Inc/Nix Technologies/g' \
  -e 's/Brave Software/Nix Technologies/g' \
  -e 's/brave\.com/nixbrowser\.in/g' \
  -e 's/Import Passwords To Brave/Import Passwords To Nix/g' \
  -e 's/Export Passwords From Brave/Export Passwords From Nix/g' \
  -e 's/Adding to Brave/Adding to Nix/g' \
  -e 's/Pin Brave/Pin Nix/g' \
  -e 's/Set Brave as/Set Nix as/g' \
  -e 's/Keep Brave/Keep Nix/g' \
  -e 's/Use Brave/Use Nix/g' \
  -e 's/about Brave/about Nix/g' \
  -e 's/by Brave/by Nix/g' \
  -e 's/for Brave/for Nix/g' \
  -e 's/to Brave/to Nix/g' \
  -e 's/from Brave/from Nix/g'

echo "✅ Done! Nix Browser branding complete!"
