#!/usr/bin/env bash
# Base16 Default - Guake Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)


gconftool-2 -s -t string /apps/guake/style/background/color "#151515151515"
gconftool-2 -s -t string /apps/guake/style/font/color "#d0d0d0d0d0d0"
gconftool-2 -s -t string /apps/guake/style/font/palette "#151515151515:#acac41414242:#9090a9a95959:#f4f4bfbf7575:#6a6a9f9fb5b5:#aaaa75759f9f:#7575b5b5aaaa:#d0d0d0d0d0d0:#505050505050:#acac41414242:#9090a9a95959:#f4f4bfbf7575:#6a6a9f9fb5b5:#aaaa75759f9f:#7575b5b5aaaa:#f5f5f5f5f5f5"
