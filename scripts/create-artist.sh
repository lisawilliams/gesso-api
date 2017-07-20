#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/artists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUxZjk5ODAwNmQ5OGEzYmM0N2FlYWVlODE1NWZlNTk5NwY6BkVG--e7be837c629ac09baa5f67b90d27d497f6a00133" \
  --data '{
    "artist": {
      "artist_name": "Gillian Wearing",
      "artist_website": "https://en.wikipedia.org/wiki/Gillian_Wearing"
    }
  }'

echo
