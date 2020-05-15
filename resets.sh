#!/bin/zsh
docker ps
docker container ls -a
docker container stop grafana-server
docker container stop prom-server
docker container prune -f
docker volume prune -f
docker network prune -f
docker ps
docker container ls -a