#!/bin/zsh
# Step 1
docker network create prom_network
# Step 2
docker run -d --network=prom_network --name prom-server -p 9090:9090 -v /Users/andersonbraz/Docker/my_prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
# Step 3
docker run -d -p 3000:3000 --network=prom_network --name grafana-server grafana/grafana