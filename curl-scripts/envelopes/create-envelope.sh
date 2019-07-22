#!/bin/bash

curl "http://localhost:4741/envelopes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "envelope": {
      "budget": "'"${BUDGET}"'",
      "budget_left": "'"${BUDGET_LEFT}"'",
      "month": "'"${MONTH}"'"
    }
  }'

  # --header "Authorization: Token token=${TOKEN}" \
echo
