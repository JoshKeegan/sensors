#!/bin/bash
docker run -d --device /dev/gpiomem -p:80:8080 --name sensors --restart=unless-stopped joshkeegan/sensors