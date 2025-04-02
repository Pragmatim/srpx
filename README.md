# arpx
The base Slim Ruby image with a default Prince XML + msttcorefonts install

# Current Versions

* ruby 3.3.7 (slim-bookworm)
* princexml 15

# Build Instructions

    docker build -t srpx .
    docker run -i -t srpx /bin/bash
    docker build -t pragmatim/srpx:r3.3.7-p15 .
    docker push pragmatim/srpx:r3.3.7-p15
    docker push pragmatim/srpx:latest
    