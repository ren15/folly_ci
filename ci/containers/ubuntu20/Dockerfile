FROM ubuntu:20.04
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
        curl \
        libssl-dev \
        git
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install mold
RUN cd /root/folly && ./build/fbcode_builder/getdeps.py install-system-deps --recursive
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    cd /root/folly && \
    mold -run ./build/fbcode_builder/getdeps.py --allow-system-packages build --no-tests