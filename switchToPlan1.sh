cp ./nginx/plan1.conf.tmp ./nginx/server.conf

docker exec -it nginx nginx -s reload