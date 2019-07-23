#!/bin/bash

curl "http://localhost:4741/characters/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiViZjY2OWUwMzIzZTFmY2MxYzE1ZDg5ZTVjMTYyZmEwNQY6BkVG--d202df56cfa22a7156f5453d2fc9abde1d2e9cf5" \
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
