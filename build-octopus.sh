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
podman run -d --rm -it \
-p 9090:9090 \
prom/prometheus


# [INSTALL]
sudo cp resources/services/* /etc/systemd/system/


# [STARTUP]
# begin prometheus systems
sudo systemctl start prometheus
sudo systemctl enable prometheus