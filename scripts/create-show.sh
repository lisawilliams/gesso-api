#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=210d5f844fecd4b875612e66bfb4592d" \
  --data '{
    "show": {
      "show_name": "'First Show'"
      "show_date": "'2017-11-22'"
      "show_time": "'19:30'"
      "notes": "'This was a great show'"
    }
  }'

echo
