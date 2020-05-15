# Prometheus

## Step 1 - Create Network

```shell
docker network create prom_network
```

## Step 2 - Up Container

```shell
docker run -d --network=prom_network --name prom-server -p 9090:9090 -v /Users/andersonbraz/Docker/Prometheus/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
```


# Grafana

```shell
docker run -d -p 3000:3000 --network=prom_network --name grafana-server grafana/grafana
```
