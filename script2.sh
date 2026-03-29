#!/bin/bash
# ============================================
# Script 2: FOSS Package Inspector
# Author: Shubhangana | Course: Open Source Software
# Description: Checks if VLC is installed, shows version, and prints philosophy
# ============================================
# ===== VARIABLE =====
PACKAGE="vlc"
echo "=========================================="
echo "     FOSS Package Inspector"
echo "=========================================="
echo ""
# ===== IF-THEN-ELSE: CHECK IF PACKAGE IS INSTALLED =====
# dpkg -l : Lists all installed packages
# 2>/dev/null : Suppresses error messages
# | : Pipe sends output to next command
# grep -q : Quiet search (returns success/failure only)
# "^ii.*$PACKAGE" : Regex - starts with "ii" (installed), then package name
if dpkg -l 2>/dev/null | grep -q "^ii.*$PACKAGE"; then
    echo "✓ $PACKAGE is INSTALLED on this system."
    echo ""
    # --- Get Version Information ---
    echo "--- Version Information ---"
    # head -1 ensures only one version is shown
    VERSION=$(dpkg -l 2>/dev/null | grep "^ii.*$PACKAGE" | head -1 | awk '{print $3}')
    echo "Version: $VERSION"
    echo ""
    # --- Get License Information ---
    echo "--- License Information ---"
    # grep -i "redistribute" finds license info in VLC output
    vlc --version 2>/dev/null | grep -i "redistribute" | head -1
    echo ""
else
    echo "✗ $PACKAGE is NOT installed on this system."
    echo "Install it using: sudo apt install $PACKAGE"
    echo ""
fi
# ===== CASE STATEMENT: PHILOSOPHY NOTE =====
echo "--- Philosophy Note ---"
case $PACKAGE in
    vlc)
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "VLC: The VideoLAN Client"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "Built by students in Paris (1996)"
        echo "License: GNU General Public License v2"
        echo "Plays almost any media format"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "Philosophy: Built by students, shared freely,"
        echo "            respects your freedom."
        ;;
    firefox)
        echo "Firefox: The Open Web Browser"
        echo "License: Mozilla Public License 2.0"
        echo "Fights for privacy and open standards"
        ;;
    git)
        echo "Git: Distributed Version Control"
        echo "License: GNU General Public License v2"
        echo "Built when proprietary failed"
        ;;
    *)
        echo "Open source software   built by community, shared freely."
        ;;
esac
echo ""
echo "=========================================="
