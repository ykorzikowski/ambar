#!/bin/bash
set -eux

npm install && npm run compile

echo $api > /app/dist/apiUrl.txt

cd /app/dist
python3 -m http.server $PORT
