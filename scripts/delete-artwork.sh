
# run at command line by going to /scripts
# then typing sh delete-show.sh and pressing return
# the ID on line 8 must be the id of an existing artwork item in the DB

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/artworks/"
ID="4"
curl "${API}${URL_PATH}${ID}" \
--include \
--request DELETE \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiU3MGM0ZTQxODM2Y2YwMWU4OThmODkzN2FjYjliM2Q5NgY6BkVG--d3d5724dabe9406476d86269f90e054c4ac3dd12" \
