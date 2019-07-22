#!/bin/bash

curl "http://localhost:4741/spendings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "spending": {
      "item": "'"${item}"'",
      "cost": "'"${COST}"'",
      "date": "'"${DATE}"'",
      "envelope_id": "'"${ENVELOPE}"'",
      "category_id": "'"${CATEGORY}"'"
    }
  }'

  # --header "Authorization: Token token=${TOKEN}" \
echo
