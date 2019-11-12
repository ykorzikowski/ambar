#!/bin/bash

set -eux

NODE_ENV=production
npm run compile

echo $api > /app/dist/apiUrl.txt

if [ $HTTPS -eq 1 ]; then
  sed -i "s|http://${FRONTEND_HOST}|https://${FRONTEND_HOST}|g" dist/*.html dist/*.map dist/*.js
fi

cd dist
python3 -m http.server $PORT
