#!/system/bin/sh
# BASED ON: https://xdaforums.com/t/goodix-fingerprint-and-how-to-deal-with-it-actually.4503147/
# Using a keylayout didn't work so we have this glorious hack instead

EVENT_NAME=$(tr "\n" " " < /proc/bus/input/devices | \
grep -o "goodix.*" | \
grep -Eo "event[0-9]+" | \
head -1)

[ -z "$EVENT_NAME" ] && exit
echo "Removing event: $EVENT_NAME"
rm /dev/input/$EVENT_NAME
