#!/bin/bash

curl "http://localhost:4741/characters/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiViZjY2OWUwMzIzZTFmY2MxYzE1ZDg5ZTVjMTYyZmEwNQY6BkVG--d202df56cfa22a7156f5453d2fc9abde1d2e9cf5" \

echo
