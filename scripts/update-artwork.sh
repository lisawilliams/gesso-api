
# run at command line by going to /scripts
# then typing sh update-artwork.sh and pressing return
# the ID on line 8 must be the id of an existing artwork in the DB

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/artworks/"
ID="5"
curl "${API}${URL_PATH}${ID}" \
--include \
--request PATCH \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiU3MGM0ZTQxODM2Y2YwMWU4OThmODkzN2FjYjliM2Q5NgY6BkVG--d3d5724dabe9406476d86269f90e054c4ac3dd12" \
--data '{
  "artwork": {
    "title": "Rainbow #6",
    "artist": "Heather Adels",
    "yearcreated": 2014,
    "artform": "painting",
    "materials": "acrylic",
    "surface": "masonite",
    "dimensions": "1x1 ft",
    "show_id": 4
  }
}'
