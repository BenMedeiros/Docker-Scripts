FROM postgres:13

RUN apt-get update && apt-get install -y inotify-tools

COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./watch.sh /watch.sh

ENTRYPOINT ["/watch.sh"]
