#!/usr/bin/env bash
# Base16 Mocha - Guake Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)


gconftool-2 -s -t string /apps/guake/style/background/color "#3B3B32322828"
gconftool-2 -s -t string /apps/guake/style/font/color "#d0d0c8c8c6c6"
gconftool-2 -s -t string /apps/guake/style/font/palette "#3B3B32322828:#cbcb60607777:#bebeb5b55b5b:#f4f4bcbc8787:#8a8ab3b3b5b5:#a8a89b9bb9b9:#7b7bbdbda4a4:#d0d0c8c8c6c6:#7e7e70705a5a:#cbcb60607777:#bebeb5b55b5b:#f4f4bcbc8787:#8a8ab3b3b5b5:#a8a89b9bb9b9:#7b7bbdbda4a4:#f5f5eeeeebeb"
