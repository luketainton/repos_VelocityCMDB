FROM --platform=amd64 debian:13.3

LABEL maintainer="Luke Tainton <luke@tainton.uk>"

USER root

RUN useradd -r -s /bin/bash -m velocitycmdb

USER velocitycmdb

# Install as service account
RUN pip install velocitycmdb

# Data will be stored in /home/velocitycmdb/.velocitycmdb/

ENTRYPOINT [ "velocitycmdb", "init" ]

EXPOSE 8086
