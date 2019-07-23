#!/bin/bash

curl "https://kino-character-rails-api.herokuapp.com/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
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
