#!/bin/bash

temp=$(cat /sys/class/thermal/thermal_zone3/temp)
# Convert to Celsius and round to the nearest whole number
rounded_temp=$(echo "scale=0; $temp / 1000" | bc)
echo $rounded_temp




