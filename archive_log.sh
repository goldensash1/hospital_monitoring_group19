#!/bin/bash
# Script to archive heart_rate_log.txt by renaming it with a timestamp

# Define the log file name
LOG_FILE="heart_rate_log.txt"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: $LOG_FILE not found!"
    exit 1
fi

# Get current date and time in the desired format (Kigali, Rwanda time zone)
TIMESTAMP=$(TZ='Africa/Kigali' date +"%Y%m%d_%H%M%S")

# Create the new log file name with timestamp
ARCHIVED_LOG_FILE="${LOG_FILE}_${TIMESTAMP}"

