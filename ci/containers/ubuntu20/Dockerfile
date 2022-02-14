FROM ubuntu:20.04
WORKDIR /root
ENV DEBIAN_FRONTEND=noninteractive
COPY compile_folly.sh /root
COPY folly /root/folly
RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        sudo \
        vim \
        ssh \
        gcc \
        python3 python3-pip \
        build-essential \
        git
RUN cd /root/folly && ./build/fbcode_builder/getdeps.py install-system-deps --recursive
RUN bash /root/compile_folly.sh