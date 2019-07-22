#!/bin/bash

curl "http://localhost:4741/envelopes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "envelope": {
      "budget": "'"${BUDGET}"'",
      "month": "'"${MONTH}"'",
      "user_id": "'"${ID}"'"
    }
  }'

  # --header "Authorization: Token token=${TOKEN}" \
echo
