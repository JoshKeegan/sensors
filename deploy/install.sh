#!/bin/bash
docker run -d --device /dev/ttyAMA0 -p:80:80 --name sensors --restart=unless-stopped joshkeegan/sensors