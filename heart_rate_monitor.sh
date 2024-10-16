#!/usr/bin/env bash


export TZ="Africa/Kigali"

read -p "Enter the device name (e.g., Monitor_A, Monitor_B): " device_name
log_file="heart_rate_log.txt"

if [ ! -f "$log_file" ]; then
    echo "Log file $log_file does not exist. Creating a new one..."
    touch "$log_file"
fi

echo "============================="
echo " Heart Rate Monitoring Test "
echo "============================="
echo "Device: $device_name"
echo "Press Ctrl+C to stop the monitoring at any time."

generate_heart_rate() {
    echo $((RANDOM % 40 + 60))
}

echo "Starting heart rate monitoring for $device_name. Logging to $log_file..."
(
    while true; do
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")
        
        heart_rate=$(generate_heart_rate)
        
        echo "$timestamp $device_name $heart_rate" >> "$log_file"
        
        sleep 1
    done
) &

pid=$!
echo "Heart rate monitoring started with PID: $pid"
