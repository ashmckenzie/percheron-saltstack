# Percheron SaltStack

This repo contains a complete SaltStack for use with [Percheron](https://github.com/ashmckenzie/percheron).

## Containers included

* base (just an image, used by all containers)
* master + api
* minion

## Dependancies

* [Percheron](https://github.com/ashmckenzie/percheron)
* [Boot2Docker v1.6.x+](https://docs.docker.com/installation)
* [Docker client](https://docs.docker.com/installation) (nice to have)

## Quickstart

Start boot2docker

````shell
boot2docker up && eval $(boot2docker shellinit) && export BOOT2DOCKER_IP=$(boot2docker ip)
```

Clone the percheron-saltstack repo

```shell
git clone https://github.com/ashmckenzie/percheron-saltstack
```

Run Percheron!

```shell
cd percheron-torrent && bundle install && bundle exec percheron start saltstack
```
