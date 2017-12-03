FROM alpine:latest

RUN apk add --no-cache nfs-utils

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.2.1/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /

COPY s6/config.init /etc/cont-init.d/00-config
COPY s6/rpcbind.run /etc/services.d/rpcbind/run
COPY s6/mountd.run /etc/services.d/mountd/run

EXPOSE 111/udp 2049/tcp 2049/udp

CMD ["/init"]
