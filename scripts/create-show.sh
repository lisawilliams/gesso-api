#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU1NzA2YzkwMmVkYzdjZjE1NjJlYjFhOTRlYzY3MjY2OAY6BkVG--3d6cc8ddd358efddeea673805508e116e7c7dd65" \
  --data '{
    "show": {
      "show_name": "Caravaggio",
      "show_date": "2017-07-28",
      "show_time": "17:00",
      "notes": "Traveling show MFA."
    }
  }'

echo
