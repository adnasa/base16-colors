#!/usr/bin/env bash
# Base16 Default - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#f5f5f5"
gsettings set "$SCHEMA" foreground "#303030"
gsettings set "$SCHEMA" palette "#f5f5f5:#ac4142:#90a959:#f4bf75:#6a9fb5:#aa759f:#75b5aa:#d0d0d0:#505050:#ac4142:#90a959:#f4bf75:#6a9fb5:#aa759f:#75b5aa:#151515"
gsettings set "$SCHEMA" cursor-color "#151515"

unset SCHEMA
