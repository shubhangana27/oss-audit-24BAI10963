#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shubhangana | Course: Open Source Software
# Description: Loops through system directories & reports disk usage and permissions
# ===== ARRAY OF DIRECTORIES TO CHECK =====
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "=========================================="
echo "     Disk and Permission Auditor"
echo "=========================================="
echo ""
echo "Directory Audit Report"
echo "------------------------------------------"
# ===== FOR LOOP: ITERATE THROUGH EACH DIRECTORY =====
for DIR in "${DIRS[@]}"; do
    # -d flag checks if the path exists and is a directory
    if [ -d "$DIR" ]; then
        # ===== GET PERMISSIONS AND OWNERSHIP =====
        # ls -ld : List directory details (long format, directory itself)
        # awk '{print $1,$3,$4}' : Extracts permissions, owner, group
        PERMS=$(ls -ld "$DIR" 2>/dev/null | awk '{print $1,$3,$4}')
        # ===== GET DISK USAGE =====
        # du -sh : Disk usage with summary and human-readable format
        # cut -f1 : Extract the first field (the size)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions: $PERMS"
        echo "  Size: $SIZE"
        echo ""
    else
        echo "$DIR does not exist on this system"
        echo ""
    fi
done
# ===== CHECK VLC CONFIG DIRECTORY =====
echo "------------------------------------------"
echo "VLC Specific Check"
echo "------------------------------------------"
VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    PERMS=$(ls -ld "$VLC_CONFIG" 2>/dev/null | awk '{print $1,$3,$4}')
    SIZE=$(du -sh "$VLC_CONFIG" 2>/dev/null | cut -f1)
    echo "VLC Config Directory: $VLC_CONFIG"
    echo "  Permissions: $PERMS"
    echo "  Size: $SIZE"
else
    echo "VLC Config Directory not found: $VLC_CONFIG"
    echo "(Normal for WSL headless environment)"
fi
echo ""
echo "=========================================="
