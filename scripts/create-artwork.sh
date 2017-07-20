#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/artworks"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU3MGM0ZTQxODM2Y2YwMWU4OThmODkzN2FjYjliM2Q5NgY6BkVG--d3d5724dabe9406476d86269f90e054c4ac3dd12" \
  --data '{
    "artwork": {
      "title": "Seed Memory",
      "artist": "Heather Adels",
      "yearcreated": 2017,
      "artform": "sculpture",
      "materials": "India ink, pigment, and colored pencil",
      "surface": "papier mache spheres with wood base",
      "dimensions": "varied",
      "show_id": 4
    }
  }'

echo
