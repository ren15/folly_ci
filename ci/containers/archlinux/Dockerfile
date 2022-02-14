FROM archlinux:latest
WORKDIR /root
COPY compile_folly.sh /root
COPY folly /root/
RUN ls /root && ls /root/folly
RUN bash /root/compile_folly.sh