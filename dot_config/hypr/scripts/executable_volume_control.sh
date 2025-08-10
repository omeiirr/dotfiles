#!/bin/bash

case $1 in
up)
  wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ &&
    volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf "%.0f%%\n", $2 * 100 }') &&
    notify-send "Volume Up" "$volume" -t 700
  ;;
down)
  wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%- &&
    volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf "%.0f%%\n", $2 * 100 }') &&
    notify-send "Volume Down" "$volume" -t 700
  ;;
esac
