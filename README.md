# NFS v4 Server Container

[![Docker Pulls](https://img.shields.io/docker/pulls/joebiellik/nfs4.svg)](https://hub.docker.com/r/joebiellik/nfs4/)
[![Docker Stars](https://img.shields.io/docker/stars/joebiellik/nfs4.svg)](https://hub.docker.com/r/joebiellik/nfs4/)
[![Docker Build](https://img.shields.io/docker/automated/joebiellik/nfs4.svg)](https://hub.docker.com/r/joebiellik/nfs4/)
[![Docker Build Status](https://img.shields.io/docker/build/joebiellik/nfs4.svg)](https://hub.docker.com/r/joebiellik/nfs4/)

[NFS v4](http://nfs.sourceforge.net/) server running under [s6 overlay](https://github.com/just-containers/s6-overlay) on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration

See [example directory](https://github.com/jcbiellikltd/docker-nfs4/tree/master/example) for sample config file.

## Quickstart

```yml
nfs4:
  image: joebiellik/nfs4

  # Required to load kernel NFS module
  privileged: true

  volumes:
    # You must provide an exports config file
    - ./exports:/etc/exports

    # Shares
    - /mnt:/mnt

  ports:
    - "111:111/tcp"
    - "111:111/udp"
    - "2049:2049/tcp"
    - "2049:2049/udp"
```

### Mounting

```shell
mount -t nfs4 localhost:/ ./nfs
```
