# Uptime Kuma for Railway: the official image, pinned by version and digest.
# Bump the tag and digest together, add a CHANGELOG.md entry, and test on a branch first.
FROM louislam/uptime-kuma:2.5.11@sha256:7554dba313c84e44fee921ef3b5626ba1c711e412e82815e8c957517026112a9

COPY start.sh /usr/local/bin/railway-start.sh
RUN chmod 0755 /usr/local/bin/railway-start.sh

# The image's ENTRYPOINT (dumb-init) stays; only the command changes.
CMD ["/usr/local/bin/railway-start.sh"]
