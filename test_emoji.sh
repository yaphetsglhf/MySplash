#!/bin/bash

curl -X POST \
  http://localhost:8050/render.jpeg \
  -H 'content-type: application/json' \
  -d '{ "width": 1067, "viewport": "2134x3000", "url": "https://pixelambacht.nl/chromacheck/", "quality":60 }'
