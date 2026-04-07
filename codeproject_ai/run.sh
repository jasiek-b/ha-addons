#!/usr/bin/with-contenv bash
set -e

# Jeżeli /data nie jest jeszcze linkiem — zamień je na link do /config
if [ ! -L /data ]; then
  rm -rf /data
  ln -s /config /data
fi

exec /app/server/start.sh
