
# run at command line by going to /scripts
# then typing sh update-show.sh and pressing return
# the ID on line 8 must be the id of an existing show item in the DB

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows/"
ID="6"
curl "${API}${URL_PATH}${ID}" \
--include \
--request PATCH \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiU1NzA2YzkwMmVkYzdjZjE1NjJlYjFhOTRlYzY3MjY2OAY6BkVG--3d6cc8ddd358efddeea673805508e116e7c7dd65" \
--data '{
  "show": {
    "show_name": "Caravaggio",
    "show_date": "2017-07-28",
    "show_time": "17:00",
    "notes": "Traveling show MFA. Hard to find parking but worth it."
  }
}'
