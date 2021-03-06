#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUxZjk5ODAwNmQ5OGEzYmM0N2FlYWVlODE1NWZlNTk5NwY6BkVG--e7be837c629ac09baa5f67b90d27d497f6a00133" \
  --data '{
    "show": {
      "show_name": "Caravaggio",
      "show_date": "2017-07-28",
      "show_time": "17:00",
      "notes": "Traveling show MFA."
    }
  }'

echo
