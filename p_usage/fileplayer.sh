#i use this script to recursively search for media and play them


#!/bin/bash
MEDIA_PLAYER="celluloid"
START_DIR="/home/francota/Downloads"
find "$START_DIR" -type f \( -iname "*.mp4" -o -iname "*.mkv" -o -iname "*.webm" \) -exec "$MEDIA_PLAYER" {} +
