#!/usr/bin/env bash
# Base16 Ocean - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#eff1f5"
gsettings set "$SCHEMA" foreground "#4f5b66"
gsettings set "$SCHEMA" palette "#eff1f5:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#2b303b"
gsettings set "$SCHEMA" cursor-color "#2b303b"

unset SCHEMA
