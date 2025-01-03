#!/bin/bash

# Print GTK4 Location
dpkg -L libgtk-4-dev | grep 'gtk4.pc'

# Locate gtk4.pc and add that path to PKG_CONFIG_PATH
GTK4_PATH=$(dpkg -L libgtk-4-dev | grep 'gtk4.pc$' | xargs dirname 2>/dev/null)
export PKG_CONFIG_PATH="$GTK4_PATH/gtk4.pc:$PKG_CONFIG_PATH"
echo "PKG_CONFIG_PATH is set to: $PKG_CONFIG_PATH"

valac --pkg gtk4 main.vala -o main

# Run and delete binary
./main
rm main main.c