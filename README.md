[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/uptime-kuma-4?utm_medium=integration&utm_source=button&utm_campaign=uptime-kuma)

# Uptime Kuma on Railway

A one-click Railway template for [Uptime Kuma](https://github.com/louislam/uptime-kuma), the self-hosted uptime monitor with status pages and notifications.

Published on the Railway marketplace as `uptime-kuma-4`: https://railway.com/deploy/uptime-kuma-4

## What it deploys

- One service built from this repo's `Dockerfile`: the official image `louislam/uptime-kuma:2.5.12`, pinned by digest, plus a small start script (`start.sh`).
- A volume at `/app/data` for the SQLite database, settings and uploads.
- A public Railway domain on port 3001, with a health check on `/api/entry-page`.

## First start

Open the Railway domain and create the admin account. Do it right away: until an admin exists, whoever opens the page first can create it.

New volumes use the embedded SQLite database, so there's no database page. To use MariaDB or MySQL instead, set Uptime Kuma's `UPTIME_KUMA_DB_TYPE` variables ([docs](https://github.com/louislam/uptime-kuma/wiki/Environment-Variables)) before the first start.

## Variables

| Variable | Default | What it does |
|---|---|---|
| `PORT` | `3001` | Port Uptime Kuma listens on. Railway's domain and health check use it. |

Optional Uptime Kuma settings (time zone, MariaDB, and others) are listed in the [upstream docs](https://github.com/louislam/uptime-kuma/wiki/Environment-Variables).

## Updates

The template builds from this repo's `main` branch. When a new Uptime Kuma version is merged here, Railway shows deployers an "update available" notice, and they choose when to apply it. Read [CHANGELOG.md](CHANGELOG.md) first. Uptime Kuma migrates its database on start, so back up the volume before a major upgrade.
