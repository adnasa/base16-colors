#!/usr/bin/env bash
# Base16 Mocha - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#3B3228"
gsettings set "$SCHEMA" foreground "#d0c8c6"
gsettings set "$SCHEMA" palette "#3B3228:#cb6077:#beb55b:#f4bc87:#8ab3b5:#a89bb9:#7bbda4:#d0c8c6:#7e705a:#cb6077:#beb55b:#f4bc87:#8ab3b5:#a89bb9:#7bbda4:#f5eeeb"
gsettings set "$SCHEMA" cursor-color "#534636"

unset SCHEMA
