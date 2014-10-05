#!/usr/bin/env bash
# Base16 Ocean - Pantheon Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#2b303b"
gsettings set "$SCHEMA" foreground "#c0c5ce"
gsettings set "$SCHEMA" palette "#2b303b:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#eff1f5"
gsettings set "$SCHEMA" cursor-color "#343d46"

unset SCHEMA
