#!/usr/bin/env bash
# Base16 Ocean - Guake Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)


gconftool-2 -s -t string /apps/guake/style/background/color "#2b2b30303b3b"
gconftool-2 -s -t string /apps/guake/style/font/color "#c0c0c5c5cece"
gconftool-2 -s -t string /apps/guake/style/font/palette "#2b2b30303b3b:#bfbf61616a6a:#a3a3bebe8c8c:#ebebcbcb8b8b:#8f8fa1a1b3b3:#b4b48e8eadad:#9696b5b5b4b4:#c0c0c5c5cece:#656573737e7e:#bfbf61616a6a:#a3a3bebe8c8c:#ebebcbcb8b8b:#8f8fa1a1b3b3:#b4b48e8eadad:#9696b5b5b4b4:#efeff1f1f5f5"
