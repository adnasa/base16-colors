#!/usr/bin/env bash
# Base16 Mocha - Mate Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Mocha Dark"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-mocha-dark"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append /org/mate/terminal/global/profile-list "$PROFILE_SLUG"

dset visible-name "'$PROFILE_NAME'"
dset palette "'#3B3228:#cb6077:#beb55b:#f4bc87:#8ab3b5:#a89bb9:#7bbda4:#d0c8c6:#7e705a:#cb6077:#beb55b:#f4bc87:#8ab3b5:#a89bb9:#7bbda4:#f5eeeb'"
dset background-color "'#3B3228'"
dset foreground-color "'#d0c8c6'"
dset bold-color "'#d0c8c6'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
