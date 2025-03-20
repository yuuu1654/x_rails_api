#!/bin/bash
BASE_URL="http://localhost:3000"

echo "=== ログイン ==="
curl -sS -v -X POST "$BASE_URL/api/v1/users/sign_in" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test01@example.com",
    "password": "password01"
  }' \
  | jq '.'


# curl -sS "$BASE_URL/api/v1/auth/sessions" \
#   -H "Content-Type: application/json" \
#   -H "access-token: z6RZT1uMCB44yZdzPbzR8Q" \
#   -H "client: Tt4a3MyiEo3FYrEU5jCxDA" \
#   -H "uid: test10@example.com" \
#   | jq '.'