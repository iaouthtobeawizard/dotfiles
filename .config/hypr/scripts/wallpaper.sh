#!/bin/bash

WALL_DIR = "$HOME/Pictures/Wallpapers"

CURRENT_WALL = "$HOME/.current_wallpaper"

MENU = $(find "$WALL_DIR" -type f \( \ 
	-iname "*.jpg" -o \
	-iname "*.jpeg" -o \
	-iname "*.png" -o \
	-iname "*.webp" -o \) | \
	while read -r img; do 
		echo "$(basename "$img")"
	done | rofi -theme ~/style-1.rasi -demnu -i -p "Walpaper")

[ -z "$MENU" ] && exit 0

SELECTED = $(find "$WALL_DIR" -type f | grep "/$MENU$")

awww img "$SELECTED" \
	--transition-type wipe 
	--transistion-duration 1

ln -sf "$SELECTED" "$CURRENT_WALL"

notify-send "Wallpaper Changed" "$MENU"

