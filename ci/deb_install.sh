export DEBIAN_FRONTEND=noninteractive
apt update -y && apt upgrade -y
apt install -y \
    curl \
    gcc g++ \
    cmake \
    ninja-build \
    git \
    make
