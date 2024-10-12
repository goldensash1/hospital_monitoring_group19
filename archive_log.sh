#!/bin/bash
# Script to archive heart_rate_log.txt by renaming it with a timestamp

# Define the log file name
LOG_FILE="heart_rate_log.txt"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: $LOG_FILE not found!"
    exit 1
fi

