# This image contains the baseline tools to build bootable base images.
FROM quay.io/centos/centos:stream9@sha256:8845d412fc1bfcd06a0f8615dcd53acf8f8895af653e40fd95625be6b24c370b
COPY coreos-continuous.repo /etc/yum.repos.d
COPY . /src
RUN /src/build.sh && cd / && rm /src -rf
