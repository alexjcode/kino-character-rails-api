#!/bin/bash

curl "https://kino-character-rails-api.herokuapp.com/characters" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiViZWI1YjQyOWM5ZDc1MmMzODFjZTI3YTZmMWI1OTA4YQY6BkVG--936dcf1c9116a0c0724611f22aa28a7226ea1e8b" \
  --data '{
    "character": {
      "last_name": "'"${LAST}"'",
      "first_name": "'"${FIRST}"'",
      "born_on": "'"${DOB}"'",
      "location": "'"${LOCATION}"'",
      "likes": "'"${LIKES}"'",
      "movie": "'"${MOVIE}"'",
      "img": "'"${IMG}"'"
    }
  }'

echo
