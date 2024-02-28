#!/bin/bash

# Function to display system information
display_system_info() {
    echo "System Information:"
    echo "-------------------"
    echo "Hostname: $(hostname)"
    echo "Operating System: $(lsb_release -ds)"
    echo "Kernel Version: $(uname -r)"
    echo "Uptime: $(uptime -p)"
    echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')"
    echo "Memory Usage: $(free -m | awk '/Mem/ {print $3 " MB / " $2 " MB"}')"
    echo "Disk Usage: $(df -h --output=used,size / | awk 'NR==2 {print $1 " / " $2}')"
    echo "-------------------"
}

# Call the function to display system information
display_system_info
