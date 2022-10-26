FROM overv/openstreetmap-tile-server as importer
ENV FLAT_NODES enabled
ENV DOWNLOAD_PBF https://ftp.fau.de/osm-planet/pbf/planet-latest.osm.pbf
CMD ["import"]

FROM importer
ENV UPDATES enabled
ENV REPLICATION_URL https://planet.openstreetmap.org/replication/minute/
CMD ["run"]