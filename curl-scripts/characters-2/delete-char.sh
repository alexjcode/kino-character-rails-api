#!/bin/bash

curl "https://kino-character-rails-api.herokuapp.com/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
