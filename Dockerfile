FROM ubuntu:xenial

# Bare minimum to add other repositories
RUN set -ex && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        apt-transport-https \
        curl \
        ca-certificates \
        gnupg && \
    apt-get update && \
    rm -rf /var/lib/apt/lists/*
