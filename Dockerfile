FROM overv/openstreetmap-tile-server
ENV FLAT_NODES enabled
ENV DOWNLOAD_PBF https://ftp.fau.de/osm-planet/pbf/planet-latest.osm.pbf
RUN build