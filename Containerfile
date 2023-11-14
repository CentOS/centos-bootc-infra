# This image contains the baseline tools to build bootable base images.
FROM quay.io/centos/centos:stream9@sha256:fdb45d92a957d5d3b9f41aa3645f31e57b0b43f5fbcf7548f5ac327f00925721
COPY coreos-continuous.repo /etc/yum.repos.d
COPY . /src
RUN /src/build.sh && cd / && rm /src -rf
