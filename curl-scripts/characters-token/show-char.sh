#!/bin/bash

curl --include "http://localhost:4741/characters/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiVkNDk3ODgxZGY3ODFhZGUzNTRkZjFiNjhhMDA3NGUxMAY6BkVG--1b1f05173577adf4294d7e1ebf75c4bf4a80cbb0" \

echo
