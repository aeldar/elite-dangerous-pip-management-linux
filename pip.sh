#!/usr/bin/env bash

MACROS_DIR="$(cd "$(dirname "$0")" && pwd)"
AUDIO="$MACROS_DIR/audio"
ED_TITLE="Elite - Dangerous"

is_ed_active() {
    ## uncomment the next line for debugging
    return 0

    kdotool getactivewindow getwindowname 2>/dev/null | grep -q "$ED_TITLE"
}

send_keys() {
    ydotool key --key-delay 50 "$@"
}

play() {
    pw-play "$AUDIO/$1" &
}

case "$1" in
    dodge)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_LEFT KEY_UP KEY_UP KEY_UP KEY_RIGHT KEY_RIGHT KEY_UP
        play "Dodge-Mode-Engaged.wav"
        ;;
    flee)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_UP KEY_UP KEY_LEFT KEY_UP
        play "Flee-Mode-Engaged.wav"
        ;;
    combat)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_LEFT KEY_RIGHT KEY_RIGHT KEY_RIGHT KEY_UP KEY_UP KEY_RIGHT
        play "Combat-Mode-Engaged.wav"
        ;;
    combat2)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_UP KEY_RIGHT KEY_RIGHT KEY_RIGHT
        play "Secondary-Combat-Mode-Engaged.wav"
        ;;
    pursuit)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_UP KEY_RIGHT KEY_RIGHT KEY_RIGHT KEY_LEFT KEY_LEFT
        play "Pursuit-Mode-Engaged.wav"
        ;;
    offense)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_LEFT KEY_RIGHT KEY_LEFT KEY_RIGHT
        play "Offense-Mode-Engaged.wav"
        ;;
    shields)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_LEFT KEY_LEFT KEY_UP KEY_LEFT
        play "Shield-Mode-Engaged.wav"
        ;;
    defense)
        is_ed_active || exit 0
        send_keys KEY_DOWN KEY_LEFT KEY_LEFT KEY_RIGHT KEY_LEFT
        play "Defense-Mode-Engaged.wav"
        ;;
esac
