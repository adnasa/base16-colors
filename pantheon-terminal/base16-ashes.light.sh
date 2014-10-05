#!/usr/bin/env bash
# Base16 Ashes - Pantheon Terminal color scheme install script
# Jannik Siebert (https://github.com/janniks)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#F3F4F5"
gsettings set "$SCHEMA" foreground "#565E65"
gsettings set "$SCHEMA" palette "#F3F4F5:#C7AE95:#95C7AE:#AEC795:#AE95C7:#C795AE:#95AEC7:#C7CCD1:#747C84:#C7AE95:#95C7AE:#AEC795:#AE95C7:#C795AE:#95AEC7:#1C2023"
gsettings set "$SCHEMA" cursor-color "#1C2023"

unset SCHEMA
