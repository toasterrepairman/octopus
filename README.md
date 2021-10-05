# Octopus: A futuile attempt at IAC (Infrastructure As Code)
I hate myself. That's why I decided to try my hand at the most complicated timesink around: Homelabs! To that end, I made this repo. Let's see how far I get before pulling my hair out!

## Installation
Fair warning, this is a supervised installation that will be hard to wrap your head around unless you're Me. Here's a nice one liner that should handle most of it though:

```
git clone https://github.com/toasterrepairman/octopus.git && cd octopus/ && sh build-octopus.sh
```

That should run the installer script. 

## Overview
This system is intended for use on an Ubuntu machine, though should work with most Debian-based distros (perhaps it's versatile enough to run on anything with podman, I won't test that though). Lots of ram is recommended, though CPU use is probably quite negligable. 

### Containers
This project uses `podman` for all of it's containerization. This can be installed quite easily from your system repos, and very few other dependencies will be required. 

### Monitoring
I use `Grafana` to oversee my `netdata` clients. 