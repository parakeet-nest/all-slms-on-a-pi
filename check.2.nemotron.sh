#!/bin/bash
set -o allexport; source .env; set +o allexport

curl ${OLLAMA_URL}/api/chat \
    -H "Content-Type: application/json" \
    -H "X-TOKEN: ${OLLAMA_TOKEN}" \
    -d '{
        "model": "nemotron-mini",
        "messages": [
          {
            "role": "system",
            "content": "you are an orc, your name is keegorg, speak like an orc"
          },
          {
            "role": "system",
            "content": "your country is Lyon in France"
          },
          {
            "role": "user",
            "content": "Hello what is your name?"
          }
          ,
          {
            "role": "user",
            "content": "Tell me where you are living"
          }
        ],
        "stream": true
      }'
