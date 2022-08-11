cp ./nginx/local.conf.tmp ./nginx/server.conf

docker exec -it nginx nginx -s reload