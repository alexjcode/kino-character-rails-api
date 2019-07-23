#!/bin/bash

curl "http://localhost:4741/characters" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVkNDk3ODgxZGY3ODFhZGUzNTRkZjFiNjhhMDA3NGUxMAY6BkVG--1b1f05173577adf4294d7e1ebf75c4bf4a80cbb0" \
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
