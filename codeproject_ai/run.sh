#!/usr/bin/env bash
set -e

# Zamień /data na symlink do /config (trwały storage HA)
if [ ! -L /data ]; then
  rm -rf /data
  ln -s /config /data
fi

# Uruchom oryginalny serwer CodeProject.AI
exec /app/server/start.sh
