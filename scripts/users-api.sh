#!/bin/bash
BASE_URL="http://localhost:3000"

echo "=== 新規登録 ==="
curl -sS -X POST -v "$BASE_URL/api/v1/users" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "name19",
    "email": "test19@example.com",
    "password": "password19"
  }' \
  | jq '.'

