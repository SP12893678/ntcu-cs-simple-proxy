FROM nginx:latest

COPY ./nginxReloader.sh /usr/local/bin/nginxReloader.sh
RUN chmod +x /usr/local/bin/nginxReloader.sh

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install inotify-tools -y

ENTRYPOINT [ "/usr/local/bin/nginxReloader.sh" ]
# CMD [ "nginx -g daemon off;" ]

EXPOSE 80
EXPOSE 443