# NFS4
[![Docker Pulls](https://img.shields.io/docker/pulls/joebiellik/nfs4.svg)](https://hub.docker.com/r/joebiellik/nfs4/)

[NFS v4 server](http://nfs.sourceforge.net/) server running on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration
See [example directory](https://github.com/jcbiellikltd/docker-nfs4/tree/master/example) for sample config file.

## Quickstart
```
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
