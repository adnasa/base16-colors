#!/usr/bin/env bash
# Base16 Ocean - Mate Terminal color scheme install script
# Chris Kempson (http://chriskempson.com)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Ocean Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-ocean-light"
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
dset palette "'#eff1f5:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#2b303b'"
dset background-color "'#eff1f5'"
dset foreground-color "'#4f5b66'"
dset bold-color "'#4f5b66'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
