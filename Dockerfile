FROM ubuntu:xenial
MAINTAINER GeneBlue

# Install dependencies
RUN apt-get update              \
    && apt-get -y -q upgrade    \
    && apt-get -y -q install    \
        python                  \
        qemu                    \
        gdb                     \
        bc                      \
        nano                    \
        wget                    \
        build-essential         \
        ccache                  \
        libncurses-dev          \
        libssl-dev              \
        u-boot-tools            \
    && apt-get clean            \
