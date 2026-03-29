#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shubhangana | Course: Open Source Software
# Description: Reads a log file, counts errors/warnings, shows last 5 matches
# Usage: ./log_analyzer.sh <logfile> [keyword]
# ===== COMMAND LINE ARGUMENTS =====
# $1 - First argument (log file path)
LOGFILE="$1"
# $2 - Second argument (keyword), default to "error" if not provided
KEYWORD="${2:-"error"}"
# Counter variable - starts at 0
COUNT=0
echo "=========================================="
echo "     Log File Analyzer"
echo "=========================================="
echo ""
# ===== CHECK IF FILE EXISTS =====
# -f flag checks if file exists and is a regular file
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    echo "Usage: ./log_analyzer.sh <logfile> [keyword]"
    exit 1
fi
# ===== CHECK IF FILE IS EMPTY (DO-WHILE STYLE RETRY) =====
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File '$LOGFILE' is empty."
    echo "Do you want to wait for data? (y/n): "
    read -r RESPONSE
    if [ "$RESPONSE" = "y" ] || [ "$RESPONSE" = "Y" ]; then
        echo "Waiting 10 seconds for data..."
        sleep 10
        if [ ! -s "$LOGFILE" ]; then
            echo "File still empty. Exiting."
            exit 1
        else
            echo "Data detected! Continuing..."
            echo ""
        fi
    else
        exit 1
    fi
fi
echo "Analyzing: $LOGFILE"
echo "Keyword: $KEYWORD"
echo ""
# ===== WHILE LOOP: READ FILE LINE BY LINE =====
# IFS= : Preserves leading/trailing whitespace
# read -r : Reads line without interpreting backslashes
while IFS= read -r LINE; do
    # Check if line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment counter by 1
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
# ===== DISPLAY SUMMARY =====
echo "--- Summary ---"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
# ===== DISPLAY LAST 5 MATCHING LINES =====
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo ""
echo "=========================================="
