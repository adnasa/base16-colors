#!/usr/bin/env bash
# Base16 Ashes - Mate Terminal color scheme install script
# Jannik Siebert (https://github.com/janniks)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Ashes Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-ashes-light"
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
dset palette "'#F3F4F5:#C7AE95:#95C7AE:#AEC795:#AE95C7:#C795AE:#95AEC7:#C7CCD1:#747C84:#C7AE95:#95C7AE:#AEC795:#AE95C7:#C795AE:#95AEC7:#1C2023'"
dset background-color "'#F3F4F5'"
dset foreground-color "'#565E65'"
dset bold-color "'#565E65'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
