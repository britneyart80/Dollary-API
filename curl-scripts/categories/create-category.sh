#!/bin/bash

curl "http://localhost:4741/categories" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "category": {
      "name": "'"${NAME}"'"
    }
  }'

  # --header "Authorization: Token token=${TOKEN}" \
echo
