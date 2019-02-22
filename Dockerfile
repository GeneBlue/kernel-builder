FROM ubuntu:xenial
MAINTAINER GeneBlue

# Install dependencies
RUN apt-get update && apt-get -y -q upgrade
RUN apt-get -y -q install python qemu gdb bc nano wget build-essential ccache libncurses-dev libssl-dev u-boot-tools
RUN apt-get clean
# cp android kernel build tools and set env
COPY ./complier_tools /opt/complier_tools
RUN cat /opt/complier_tools/build-env.txt >> /root/.bashrc
