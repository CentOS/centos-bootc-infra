# This image contains the baseline tools to build bootable base images.
FROM quay.io/centos/centos:stream9
COPY coreos-continuous.repo /etc/yum.repos.d
COPY . /src
RUN /src/build.sh && cd / && rm /src -rf

LABEL org.opencontainers.image.source="https://github.com/centos-bootc/centos-bootc-infra"
LABEL org.opencontainers.image.licenses=""
LABEL org.opencontainers.image.vendor="Red Hat"
LABEL org.opencontainers.image.authors="Red Hat contributors"
LABEL org.opencontainers.image.title="bootc Container builder"
