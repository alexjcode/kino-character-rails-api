#!/bin/bash

curl --include "http://localhost:4741/characters" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
