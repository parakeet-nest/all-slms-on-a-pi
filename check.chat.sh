#!/bin/bash
set -o allexport; source .env; set +o allexport

curl ${OLLAMA_URL}/api/chat \
    -H "Content-Type: application/json" \
    -H "X-TOKEN: ${OLLAMA_TOKEN}" \
    -d '{
        "model": "qwen2:0.5b",
        "messages": [
          {
            "role": "system",
            "content": "you are a pizza expert"
          },
          {
            "role": "user",
            "content": "What is the most famous pizza in the world?"
          }
        ],
        "stream": true
      }'
