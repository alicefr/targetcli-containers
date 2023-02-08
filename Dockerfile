FROM quay.io/centos/centos:stream9

RUN dnf install -y targetcli kmod && dnf clean all

ENTRYPOINT ["/usr/bin/targetclid"]
