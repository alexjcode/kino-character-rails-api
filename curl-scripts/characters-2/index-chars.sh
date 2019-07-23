#!/bin/bash

curl --include "https://kino-character-rails-api.herokuapp.com/characters" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
