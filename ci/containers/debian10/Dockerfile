FROM debian:10
WORKDIR /root
ENV DEBIAN_FRONTEND=noninteractive
COPY folly /root/folly
RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        sudo \
        vim \
        ssh \
        gcc g++ \
        python3 python3-pip \
        build-essential \
        ninja-build \
        cmake \
        make \
        libssl-dev \
        git
RUN cd /root/folly && ./build/fbcode_builder/getdeps.py install-system-deps --recursive
RUN cd /root/folly && ./build/fbcode_builder/getdeps.py --no-tests --allow-system-packages build