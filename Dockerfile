FROM overv/openstreetmap-tile-server AS importer
ENV FLAT_NODES enabled
ENV DOWNLOAD_PBF https://ftp.fau.de/osm-planet/pbf/planet-latest.osm.pbf
RUN set -eux; \
    ./run.sh import

FROM importer AS runner
ENV UPDATES enabled
ENV REPLICATION_URL https://planet.openstreetmap.org/replication/minute/
CMD ["run"]