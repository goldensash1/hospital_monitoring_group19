#!/usr/bin/env bash

echo "Displaying log entries for $device_name in real-time:"
tail -f "$log_file" | grep --line-buffered "$device_name"
