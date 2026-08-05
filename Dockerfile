FROM --platform=amd64 python:3.14.7-slim-trixie

LABEL maintainer="Luke Tainton <luke@tainton.uk>"

USER root

RUN useradd -r -s /bin/bash -m velocitycmdb

USER velocitycmdb

ENV PATH="/home/velocitycmdb/.local/bin:$PATH"

# Install as service account
RUN pip install velocitycmdb

# Data will be stored in /home/velocitycmdb/.velocitycmdb/

ENTRYPOINT [ "velocitycmdb", "init" ]

EXPOSE 8086
