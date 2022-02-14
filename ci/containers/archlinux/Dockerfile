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
        git \
    && yes | pacman -Scc
RUN ls /root && ls /root/folly
RUN bash /root/compile_folly.sh