#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shubhangana | Course: Open Source Software
# Description: Asks user questions and generates a personalized manifesto
# ===== ALIAS DEMONSTRATION =====
# Aliases are shortcuts for longer commands
alias today='date +"%B %d, %Y"'
# ===== DECORATIVE HEADER =====
echo "=========================================="
echo "     Open Source Manifesto Generator"
echo "=========================================="
echo ""
echo "Answer three questions to generate your"
echo "personal open source philosophy statement."
echo ""
# ===== READ USER INPUT =====
# read -p : Displays prompt and waits for user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
echo ""
echo "Generating your manifesto..."
# ===== CREATE FILENAME =====
# $(whoami) gets username, $(date +%Y%m%d) gets current date
OUTPUT="manifesto_$(whoami)_$(date +%Y%m%d).txt"
# ===== GENERATE MANIFESTO CONTENT =====
# > creates new file, >> appends to file
echo "==========================================" > "$OUTPUT"
echo "      MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "Date: $(today)" >> "$OUTPUT"
echo "" >> "$OUTPUT"
# Compose manifesto using user's answers
echo "I, $(whoami), believe in the power of open source." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I use $TOOL   a tool built by" >> "$OUTPUT"
echo "strangers who chose to share their work freely." >> "$OUTPUT"
echo "That is open source." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, '$FREEDOM' means having the right to" >> "$OUTPUT"
echo "study, modify, and share software without asking permission." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Inspired by this, I commit to building $BUILD" >> "$OUTPUT"
echo "and sharing it with the world. Not for profit," >> "$OUTPUT"
echo "but because someone else might need it someday." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "The best software is built together." >> "$OUTPUT"
echo "The strongest code is written in the open." >> "$OUTPUT"
echo "This is my pledge to give back." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "Signed," >> "$OUTPUT"
echo "$(whoami)" >> "$OUTPUT"
echo "Open Source Contributor" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
# ===== DISPLAY SUCCESS MESSAGE =====
echo ""
echo "✓ Manifesto saved to: $OUTPUT"
echo ""
echo "--- Your Manifesto ---"
echo ""
cat "$OUTPUT"
echo ""
echo "=================================="
