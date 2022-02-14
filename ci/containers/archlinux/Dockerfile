FROM archlinux:latest
WORKDIR /root
COPY compile_folly.sh /root
COPY folly /root/
RUN \
    pacman -Syu --noconfirm \
    && yes | pacman -S --noconfirm base-devel \
    && pacman -S --noconfirm \
        sudo \
        vim \
        openssh \
        python3 python-pip \
        git \
        cmake \
        boost \
        ninja \
        double-conversion \
        fmt \
        gflags \
        glog \
        gtest \
        libevent \
        lz4 \
        snappy \
        zstd \
        autoconf \
        automake \
        libtool \
        libsodium \
    && yes | pacman -Scc
RUN ls /root && ls /root/folly
RUN bash /root/compile_folly.sh