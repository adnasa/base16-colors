#!/usr/bin/env bash
# Base16 Ashes - Guake Terminal color scheme install script
# Jannik Siebert (https://github.com/janniks)


gconftool-2 -s -t string /apps/guake/style/background/color "#F3F3F4F4F5F5"
gconftool-2 -s -t string /apps/guake/style/font/color "#56565E5E6565"
gconftool-2 -s -t string /apps/guake/style/font/palette "#F3F3F4F4F5F5:#C7C7AEAE9595:#9595C7C7AEAE:#AEAEC7C79595:#AEAE9595C7C7:#C7C79595AEAE:#9595AEAEC7C7:#C7C7CCCCD1D1:#74747C7C8484:#C7C7AEAE9595:#9595C7C7AEAE:#AEAEC7C79595:#AEAE9595C7C7:#C7C79595AEAE:#9595AEAEC7C7:#1C1C20202323"
