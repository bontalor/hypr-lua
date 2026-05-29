#!/usr/bin/env bash
hyprpicker -r & PID=$!; sleep 0.1; G=$(slurp); kill $PID; grim -g "$G" - | wl-copy
