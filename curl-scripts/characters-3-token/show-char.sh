#!/bin/bash

curl --include "https://kino-character-rails-api.herokuapp.com/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiViZWI1YjQyOWM5ZDc1MmMzODFjZTI3YTZmMWI1OTA4YQY6BkVG--936dcf1c9116a0c0724611f22aa28a7226ea1e8b" \

echo
