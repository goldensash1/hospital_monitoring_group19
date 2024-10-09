#!/bin/bash

# Set the timezone for this session (without using timedatectl)
export TZ="Africa/Kigali"

# Prompt for the device name
read -p "Enter the device name (e.g., Monitor_A, Monitor_B): " device_name

# Define the log file
log_file="heart_rate_log.txt"

# Check if the log file exists, create it if it doesn't
if [ ! -f "$log_file" ]; then
    echo "Log file $log_file does not exist. Creating a new one..."
    touch "$log_file"
fi

# Print the title for the new test
echo "============================="
echo " Heart Rate Monitoring Test "
echo "============================="
echo "Device: $device_name"
echo "Press Ctrl+C to stop the monitoring at any time."

# Function to generate a random heart rate value
generate_heart_rate() {
    echo $((RANDOM % 40 + 60))  # Generates a heart rate between 60 and 100
}

# Start logging heart rate data
echo "Starting heart rate monitoring for $device_name. Logging to $log_file..."
(
    while true; do
        # Get the current timestamp
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")
        
        # Generate a random heart rate
        heart_rate=$(generate_heart_rate)
        
        # Log the data to the file
        echo "$timestamp $device_name $heart_rate" >> "$log_file"
        
        # Wait for 1 second
        sleep 1
    done
) &

# Print the process ID (PID)
pid=$!
echo "Heart rate monitoring started with PID: $pid"

# Display the log file updates in real time using grep to filter for the current device
echo "Displaying log entries for $device_name in real-time:"
tail -f "$log_file" | grep --line-buffered "$device_name"

