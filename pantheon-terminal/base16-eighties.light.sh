#!/usr/bin/env bash
# Base16 Eighties - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#f2f0ec"
gsettings set "$SCHEMA" foreground "#515151"
gsettings set "$SCHEMA" palette "#f2f0ec:#f2777a:#99cc99:#ffcc66:#6699cc:#cc99cc:#66cccc:#d3d0c8:#747369:#f2777a:#99cc99:#ffcc66:#6699cc:#cc99cc:#66cccc:#2d2d2d"
gsettings set "$SCHEMA" cursor-color "#2d2d2d"

unset SCHEMA
