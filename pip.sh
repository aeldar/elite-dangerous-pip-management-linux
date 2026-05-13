#!/usr/bin/env bash

MACROS_DIR="$(cd "$(dirname "$0")" && pwd)"
AUDIO="$MACROS_DIR/audio"
ED_TITLE="Elite - Dangerous"

is_ed_active() {
    ## uncomment the next line for debugging
    # return 0

    kdotool getactivewindow getwindowname 2>/dev/null | grep -q "$ED_TITLE"
}

PRESS_SEC=0.050
DELAY_SEC=0.030

send_keys() {
    for key in "$@"; do
        xdotool keydown "$key"
        sleep "$PRESS_SEC"
        xdotool keyup "$key"
        sleep "$DELAY_SEC"
    done
}

play() {
    pw-play "$AUDIO/$1" &
}

case "$1" in
    dodge)
        is_ed_active || exit 0
        send_keys Down Left Up Up Up Right Right Up
        play "Dodge-Mode-Engaged.wav"
        ;;
    flee)
        is_ed_active || exit 0
        send_keys Down Up Up Left Up
        play "Flee-Mode-Engaged.wav"
        ;;
    combat)
        is_ed_active || exit 0
        send_keys Down Left Right Right Right Up Up Right
        play "Combat-Mode-Engaged.wav"
        ;;
    combat2)
        is_ed_active || exit 0
        send_keys Down Up Right Right Right
        play "Secondary-Combat-Mode-Engaged.wav"
        ;;
    pursuit)
        is_ed_active || exit 0
        send_keys Down Up Right Right Right Left Left
        play "Pursuit-Mode-Engaged.wav"
        ;;
    offense)
        is_ed_active || exit 0
        send_keys Down Left Right Left Right
        play "Offense-Mode-Engaged.wav"
        ;;
    shields)
        is_ed_active || exit 0
        send_keys Down Left Left Up Left
        play "Shield-Mode-Engaged.wav"
        ;;
    defense)
        is_ed_active || exit 0
        send_keys Down Left Left Right Left
        play "Defense-Mode-Engaged.wav"
        ;;
esac
