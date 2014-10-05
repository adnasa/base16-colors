#!/usr/bin/env bash
# Base16 Default - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#151515"
gsettings set "$SCHEMA" foreground "#d0d0d0"
gsettings set "$SCHEMA" palette "#151515:#ac4142:#90a959:#f4bf75:#6a9fb5:#aa759f:#75b5aa:#d0d0d0:#505050:#ac4142:#90a959:#f4bf75:#6a9fb5:#aa759f:#75b5aa:#f5f5f5"
gsettings set "$SCHEMA" cursor-color "#202020"

unset SCHEMA
