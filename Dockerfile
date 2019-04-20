FROM ubuntu:xenial
MAINTAINER GeneBlue (geneblue.mail@gmail.com)

# Install dependencies
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get -y -q upgrade
RUN apt-get -y -q install git cpio python gdb bc nano wget build-essential ccache libncurses-dev libssl-dev u-boot-tools
RUN apt-get -y -q install android-tools-adb android-tools-fastboot autoconf automake bc bison build-essential cscope curl device-tree-compiler expect flex ftp-upload gdisk iasl libattr1-dev libc6:i386 libcap-dev  libfdt-dev libftdi-dev libglib2.0-dev libhidapi-dev libncurses5-dev libpixman-1-dev libssl-dev libstdc++6:i386 libtool libz1:i386 make mtools netcat python-crypto python-serial python-wand unzip uuid-dev xdg-utils xterm xz-utils zlib1g-dev
RUN apt-get clean
# cp android kernel build tools and set env
COPY ./complier_tools /opt/complier_tools
RUN cat /opt/complier_tools/build-env.txt >> /root/.bashrc
