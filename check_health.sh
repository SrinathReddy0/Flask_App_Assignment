#!/bin/bash
URL="http://localhost:5000/health"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$RESPONSE" -eq 200 ]; then
  echo "Health check PASSED: $URL"
else
  echo "Health check FAILED: $URL - Status code: $RESPONSE"
fi
