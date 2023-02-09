#!/bin/bash
###########
nginx -g daemon off;

while true
do
  inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/conf.d
  inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/ssl/server.cer
  inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/ssl/server.key
  inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/ssl/uca.cer
  nginx -t
  if [ $? -eq 0 ]
  then
    echo "Detected Nginx Configuration Change"
    echo "Executing: nginx -s reload"
    nginx -s reload
  fi
done