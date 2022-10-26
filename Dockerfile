FROM overv/openstreetmap-tile-server AS importer
# These 2 set as ARG so they don't show up in the next image
ARG FLAT_NODES=enabled
ARG DOWNLOAD_PBF=https://ftp.fau.de/osm-planet/pbf/planet-latest.osm.pbf
RUN set -eux; \
    ./run.sh import

FROM importer AS runner
ENV UPDATES enabled
ENV REPLICATION_URL https://planet.openstreetmap.org/replication/minute/
CMD ["run"]