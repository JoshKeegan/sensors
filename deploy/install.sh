#!/bin/bash
docker run -d --device /dev/ttyAMA0 -p:80:8080 --name sensors --restart=unless-stopped joshkeegan/sensors