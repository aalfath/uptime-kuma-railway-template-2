# Changelog

Each entry is one version of this Railway template. Read it before you apply an update in Railway: breaking changes come first.

## 2.5.11 (2026-11-16)

- **Uptime Kuma 2.5.11** (`louislam/uptime-kuma:2.5.11@sha256:7554dba313c84e44fee921ef3b5626ba1c711e412e82815e8c957517026112a9`). The template used to run the 2.4.0 image directly.
- The template now builds from this repo, so Railway shows an "update available" notice when a new version is merged here.
- New volumes start with the embedded SQLite database, so the database setup page is skipped. Existing data directories are never changed.
- Health check on `/api/entry-page`, domain on port 3001, restart policy `ALWAYS`.
