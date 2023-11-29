# This image contains the baseline tools to build bootable base images.
FROM quay.io/centos/centos:stream9@sha256:30178f32547587d82188bb3ffa27f394da32d311e590f4d7cd9a66e2953c1d68
COPY coreos-continuous.repo /etc/yum.repos.d
COPY . /src
RUN /src/build.sh && cd / && rm /src -rf
