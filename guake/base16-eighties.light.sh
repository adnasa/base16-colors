#!/usr/bin/env bash
# Base16 Eighties - Guake Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)


gconftool-2 -s -t string /apps/guake/style/background/color "#f2f2f0f0ecec"
gconftool-2 -s -t string /apps/guake/style/font/color "#515151515151"
gconftool-2 -s -t string /apps/guake/style/font/palette "#f2f2f0f0ecec:#f2f277777a7a:#9999cccc9999:#ffffcccc6666:#66669999cccc:#cccc9999cccc:#6666cccccccc:#d3d3d0d0c8c8:#747473736969:#f2f277777a7a:#9999cccc9999:#ffffcccc6666:#66669999cccc:#cccc9999cccc:#6666cccccccc:#2d2d2d2d2d2d"
