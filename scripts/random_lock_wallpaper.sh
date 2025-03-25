#!/bin/bash

# Random Hyprlock Wallpaper Script
# This script selects a random wallpaper from available sources 
# and sets it as the Hyprlock background

# Set cache directory
CACHE_DIR="$HOME/.cache/hyde/wallpapers"
LOCK_WALLPAPER="$CACHE_DIR/hyprlock.png"

# Create cache directory if it doesn't exist
mkdir -p "$CACHE_DIR"

# Define possible wallpaper sources (in order of preference)
WALLPAPER_SOURCES=(
    # System wallpapers
    "/usr/share/backgrounds"
    # GNOME wallpapers
    "/usr/share/backgrounds/gnome"
    # Hyde wallpapers
    "$HOME/.local/share/hyde/wallbash"
)

# Function to find all image files in the specified directories
find_wallpapers() {
    local wallpapers=()
    
    for source in "${WALLPAPER_SOURCES[@]}"; do
        if [ -d "$source" ]; then
            while IFS= read -r file; do
                wallpapers+=("$file")
            done < <(find "$source" -type f \( -name "*.jpg" -o -name "*.png" \) 2>/dev/null)
        fi
    done
    
    # If no wallpapers found in the sources, use the current wallpaper
    if [ ${#wallpapers[@]} -eq 0 ]; then
        # Use the current wallpaper from Hyde
        if [ -f "$HOME/.cache/hyde/wall.set.png" ]; then
            wallpapers+=("$HOME/.cache/hyde/wall.set.png")
        fi
    fi
    
    echo "${wallpapers[@]}"
}

# Get all available wallpapers
WALLPAPERS=( $(find_wallpapers) )

# Select a random wallpaper if any were found
if [ ${#WALLPAPERS[@]} -gt 0 ]; then
    RANDOM_INDEX=$((RANDOM % ${#WALLPAPERS[@]}))
    SELECTED_WALLPAPER="${WALLPAPERS[$RANDOM_INDEX]}"
    
    # Copy the selected wallpaper to the hyprlock location
    cp "$SELECTED_WALLPAPER" "$LOCK_WALLPAPER"
    
    # Set file permissions
    chmod 644 "$LOCK_WALLPAPER"
    
    echo "Hyprlock wallpaper set to: $SELECTED_WALLPAPER"
    
    # Optionally notify the user
    if command -v notify-send &> /dev/null; then
        notify-send "Hyprlock Wallpaper" "Random wallpaper set for lock screen" -i "$LOCK_WALLPAPER"
    fi
else
    echo "No wallpapers found in the specified directories."
    exit 1
fi

exit 0 