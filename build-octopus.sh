# [INIT]
# login to docker because it's garbage software
podman login -u toasterrepairman

# [ORCHESTRATE]
# grab grafana
podman pull grafana/grafana
# start grafana
podman run \
    -d --name=grafana \
    -p 3000:3000 \
    grafana/grafana

# grab prometheus
podman pull prom/prometheus
# start prometheus
docker run \
    -p 9090:9090 \
    -v /path/to/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus

# [INSTALL]