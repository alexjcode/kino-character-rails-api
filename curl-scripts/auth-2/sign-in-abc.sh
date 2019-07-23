#!/bin/bash

curl "https://kino-character-rails-api.herokuapp.com/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "a@bc",
      "password": "1234"
    }
  }'

echo
