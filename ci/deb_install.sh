export DEBIAN_FRONTEND=noninteractive
apt update -y && apt upgrade -y
apt install -y \
    clang-13 lld-13 \
    curl \
    gcc g++ \
    gcc-11 g++-11 \
    cmake \
    ninja-build \
    git \
    make
