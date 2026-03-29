#!/bin/bash
# ============================================
# Script 1: System Identity Report
# Author: Shubhangana | Course: Open Source Software
# Description: Displays system information like a welcome screen
# ============================================
# ===== VARIABLES =====
# Store student name for display
STUDENT_NAME="Shubhangana"
# Store chosen software name for display
SOFTWARE_CHOICE="VLC Media Player"
# ===== SYSTEM INFORMATION =====
# $(uname -r) - Command substitution: captures kernel version
KERNEL=$(uname -r)
# $(whoami) - Captures current logged-in username
USER_NAME=$(whoami)
# $HOME - Built-in variable containing user's home directory
HOME_DIR=$HOME
# $(uptime -p) - Shows how long system has been running
UPTIME=$(uptime -p)
# $(date) - Gets current date and time
CURRENT_DATE=$(date)
# OS license information (Ubuntu uses GPL)
LICENSE="GNU General Public License"
# ===== DISPLAY WELCOME SCREEN =====
echo "=========================================="
echo "     Open Source Audit - System Report"
echo "=========================================="
echo ""
echo "Welcome, $USER_NAME!"
echo ""
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "OS License      : $LICENSE"
echo ""
echo "Student Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo ""
echo "=========================================="
