# Changelog

Each entry is one version of this Railway template. Read it before you apply an update in Railway: breaking changes come first.

## 2.5.12 (2026-11-19)

- No breaking changes. Monitors, history and settings on the `/app/data` volume are kept.
- Uptime Kuma [2.5.12](https://github.com/louislam/uptime-kuma/releases/tag/2.5.12) is a security fix: it sandboxes a dangerous library (#8187).
- Image: `louislam/uptime-kuma:2.5.12@sha256:8e4b6bef96417ec98a35dc103c99cc64fc229a01e584e56d95d9004d2003c02a`.

## 2.5.11, README (2026-11-16)

- README: Deploy on Railway button for the published template `uptime-kuma-4`. No change to what gets deployed.

## 2.5.11 (2026-11-16)

- **Uptime Kuma 2.5.11** (`louislam/uptime-kuma:2.5.11@sha256:7554dba313c84e44fee921ef3b5626ba1c711e412e82815e8c957517026112a9`). The template used to run the 2.4.0 image directly.
- The template now builds from this repo, so Railway shows an "update available" notice when a new version is merged here.
- New volumes start with the embedded SQLite database, so the database setup page is skipped. Existing data directories are never changed.
- Health check on `/api/entry-page`, domain on port 3001, restart policy `ALWAYS`.
