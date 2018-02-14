# Clog-CLI Alpine

---

**DEPRECATED:** Use the `clog-vX.X.X-x86_64-unknown-linux-musl.tar.gz` binary provided at [clog-tool/clog-cli/releases](https://github.com/clog-tool/clog-cli/releases), it works fine for Alpine. This repo is kept for maintenance.

---

This is a one-shot cross-compiler container for building the [clog-cli](https://github.com/clog-tool/clog-cli) binary for [Alpine Linux](https://hub.docker.com/_/alpine/).

Running this container will build `clog` and deposit it in the `/output/` directory. If this directory is volumed on your local system, your host will have access to the resulting binaries.

Available on [Docker Hub](https://hub.docker.com/r/emcniece/clog-cli-alpine)

## Download

See [clog-cli-alpine/releases](https://github.com/emcniece/clog-cli-alpine/releases)

## Running

The [Makefile](./Makefile) has quick commands for building and running:

```sh
# Build the image
make image

# Run the container (one-shot):
make run

# Run the container in debug mode:
make run-debug
```

The [docker-compose.yml](./docker-compose.yml) file contains an example of specifying the `$BRANCH` environment variable, allowing builds of non-`master` branches:

```sh
# Run container via docker-compose:
docker-compose up
```