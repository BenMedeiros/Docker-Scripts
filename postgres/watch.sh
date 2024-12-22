#!/bin/bash

# Start PostgreSQL in the background
docker-entrypoint.sh postgres &

# Watch for changes in init.sql and restart PostgreSQL
while inotifywait -e modify /docker-entrypoint-initdb.d/init.sql; do
  echo "init.sql changed, restarting PostgreSQL..."
  pg_ctl -D "$PGDATA" -m fast -w restart
done
