# [INIT]
# login to docker because it's garbage software
podman login -u toasterrepairman

# [ORCHESTRATE]
# grab grafana
podman pull grafana/grafana
# start grafana
podman run -d --name=grafana -p 3000:3000 grafana/grafana

# [INSTALL]