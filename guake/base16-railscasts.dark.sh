#!/usr/bin/env bash
# Base16 Railscasts - Guake Terminal color scheme install script
# Ryan Bates (http://railscasts.com)


gconftool-2 -s -t string /apps/guake/style/background/color "#2b2b2b2b2b2b"
gconftool-2 -s -t string /apps/guake/style/font/color "#e6e6e1e1dcdc"
gconftool-2 -s -t string /apps/guake/style/font/palette "#2b2b2b2b2b2b:#dada49493939:#a5a5c2c26161:#ffffc6c66d6d:#6d6d9c9cbebe:#b6b6b3b3ebeb:#51519f9f5050:#e6e6e1e1dcdc:#5a5a64647e7e:#dada49493939:#a5a5c2c26161:#ffffc6c66d6d:#6d6d9c9cbebe:#b6b6b3b3ebeb:#51519f9f5050:#f9f9f7f7f3f3"
