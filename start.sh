#!/bin/sh
# Start Uptime Kuma on Railway.
# - Listens on $PORT (Uptime Kuma reads PORT; the template sets it to 3001).
# - On a brand-new volume, picks the embedded SQLite database so the
#   "choose a database" page is skipped. It never touches an existing setup:
#   if db-config.json or kuma.db already exists, or UPTIME_KUMA_DB_TYPE is
#   set, Uptime Kuma's own logic decides.
set -e

DATA_DIR="${DATA_DIR:-/app/data}"
mkdir -p "$DATA_DIR"

if [ -z "${UPTIME_KUMA_DB_TYPE:-}" ] \
   && [ ! -f "$DATA_DIR/db-config.json" ] \
   && [ ! -f "$DATA_DIR/kuma.db" ]; then
  echo "railway-start: new volume, using the embedded SQLite database"
  printf '{\n    "type": "sqlite"\n}\n' > "$DATA_DIR/db-config.json"
fi

cd /app
exec node server/server.js
