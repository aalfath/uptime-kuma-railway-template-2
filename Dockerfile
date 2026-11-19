# Uptime Kuma for Railway: the official image, pinned by version and digest.
# Bump the tag and digest together, add a CHANGELOG.md entry, and test on a branch first.
FROM louislam/uptime-kuma:2.5.12@sha256:8e4b6bef96417ec98a35dc103c99cc64fc229a01e584e56d95d9004d2003c02a

COPY start.sh /usr/local/bin/railway-start.sh
RUN chmod 0755 /usr/local/bin/railway-start.sh

# The image's ENTRYPOINT (dumb-init) stays; only the command changes.
CMD ["/usr/local/bin/railway-start.sh"]
