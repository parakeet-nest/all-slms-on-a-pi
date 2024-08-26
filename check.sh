#!/bin/bash
set -o allexport; source .env; set +o allexport

curl ${OLLAMA_URL}/api/generate \
    -H "Content-Type: application/json" \
    -H "X-TOKEN: ${OLLAMA_TOKEN}" \
    -d '{
        "model": "qwen2:0.5b",
        "prompt": "What is the most famous pizza in the world?",
        "stream": true
      }'
