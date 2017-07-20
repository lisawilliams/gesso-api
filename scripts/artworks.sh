#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/artworks"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiU3MGM0ZTQxODM2Y2YwMWU4OThmODkzN2FjYjliM2Q5NgY6BkVG--d3d5724dabe9406476d86269f90e054c4ac3dd12"

echo
