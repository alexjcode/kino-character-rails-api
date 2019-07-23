#!/bin/bash

curl --include "https://kino-character-rails-api.herokuapp.com/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
