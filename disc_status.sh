#!/bin/bash

# Get disk utilization percentage
disk_utilization=$(df -h --output=pcent / | awk 'NR==2{print $1}')

# Set threshold percentage
threshold=90

# Calculate the difference between threshold and disk utilization
difference=$((threshold - disk_utilization))

# Echo disk utilization and the difference
echo "Disk utilization: $disk_utilization"
echo "Difference from threshold: $difference%"
