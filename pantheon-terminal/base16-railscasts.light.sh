#!/usr/bin/env bash
# Base16 Railscasts - Pantheon Terminal color scheme install script
# Ryan Bates (http://railscasts.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#f9f7f3"
gsettings set "$SCHEMA" foreground "#3a4055"
gsettings set "$SCHEMA" palette "#f9f7f3:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#e6e1dc:#5a647e:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#2b2b2b"
gsettings set "$SCHEMA" cursor-color "#2b2b2b"

unset SCHEMA
