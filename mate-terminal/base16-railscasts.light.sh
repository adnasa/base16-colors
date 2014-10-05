#!/usr/bin/env bash
# Base16 Railscasts - Mate Terminal color scheme install script
# Ryan Bates (http://railscasts.com)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Railscasts Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-railscasts-light"
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
dset palette "'#f9f7f3:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#e6e1dc:#5a647e:#da4939:#a5c261:#ffc66d:#6d9cbe:#b6b3eb:#519f50:#2b2b2b'"
dset background-color "'#f9f7f3'"
dset foreground-color "'#3a4055'"
dset bold-color "'#3a4055'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
