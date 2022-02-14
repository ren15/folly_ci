FROM archlinux:latest
WORKDIR /root
COPY compile_folly.sh /root
COPY folly /root/
RUN \
    pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        sudo \
        vim \
        openssh \
        base-devel \
        python3 python3-pip \
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