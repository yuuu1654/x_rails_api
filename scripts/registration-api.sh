#!/bin/bash
BASE_URL="http://localhost:3000"

echo "=== 新規登録 ==="
curl -sS -X POST -v "$BASE_URL/api/v1/users" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "name01",
    "email": "test01@example.com",
    "password": "password01",
    "phone": "09009876453",
    "birthday": "1999-10-10"
  }' \
  | jq '.'
