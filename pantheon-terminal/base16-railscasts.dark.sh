#!/usr/bin/env bash
# Base16 Railscasts - Pantheon Terminal color scheme install script
# Ryan Bates (http://railscasts.com)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#2b2b2b"
gsettings set "$SCHEMA" foreground "#e6e1dc"
gsettings set "$SCHEMA" palette "#2b2b2b:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#e6e1dc:#5a647e:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#f9f7f3"
gsettings set "$SCHEMA" cursor-color "#272935"

unset SCHEMA
