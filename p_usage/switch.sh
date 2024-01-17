#!/bin/bash

# Check if acpi command is available
if ! command -v acpi &> /dev/null; then
    echo "acpi command not found. Please install acpi."
    exit 1
fi

# Main function to check battery level and shutdown if below 8%
check_battery() {
    battery_level=$(acpi -b | grep -P -o '[0-9]+' | tr -d '\n' | tr -d '[:space:]')

    if [ "$battery_level" -le 90 ]; then
        echo "Battery level is $battery_level%. Shutting down..."
        shutdown -h now
    fi
}

# Run the check_battery function in a loop every 5 minutes
while true; do
    check_battery
    sleep 30  # 5 minutes
done

