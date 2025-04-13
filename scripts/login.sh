#!/bin/bash
BASE_URL="http://localhost:3000"

# echo "=== ログイン ==="
# curl -sS -v -X POST "$BASE_URL/api/v1/users/sign_in" \
#   -H "Content-Type: application/json" \
#   -d '{
#     "email": "test01@example.com",
#     "password": "password01"
#   }' \
#   | jq '.'

echo "=== ログイン情報取得 ==="
curl -sS "$BASE_URL/api/v1/auth/sessions" \
  -H "Content-Type: application/json" \
  -H "access-token: rHbh6D2VwjjaLLaQ6jgJbw" \
  -H "client: aepFeNXUb82z7OeSL34Z1g" \
  -H "uid: test01@example.com" \
  | jq '.'