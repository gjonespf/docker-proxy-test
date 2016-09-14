# docker-proxy-test

A testbed for a few different technologies around simple but flexible web proxying.
Basically, testing functionality from documentation at:
- [KV-Config Documentation](https://github.com/containous/traefik/blob/master/docs/user-guide/kv-config.md)

Documentation at:
[Proxy Test page] (https://github.com/gjonespf/docker-proxy-test)

## Prerequisites
Makes a few simple assumptions, but tries to stay self contained.
- Running Docker 1.11+ (for Compose DNS stuff)
- Docker Compose 1.7+
- Can access the interwebs
- That DNS for *.services.consul and *.docker are pointing at your test docker machine

Example tested versions
```bash
docker --version
Docker version 1.12.1, build 23cf638
docker-compose --version
docker-compose version 1.7.1, build 0a9ab35
```

## Getting started

```bash
git clone https://github.com/gjonespf/docker-proxy-test.git
cd docker-proxy-test
./go.sh
```

This will run up the example and you'll have access to:

- [Traefik dashboard] (http://traefik.services.consul/)
- [Consul dashboard] (http://consul-web.services.consul/)

## Test examples

Please see:
[Examples] (examples.md)

## Issues

Please see:
[Issues] (issues.md)

## TODO

- Write up issues with this approach currently
- Generalise / create example for other KV stores (Etcd/boltdb?)
- Test ACME config?


