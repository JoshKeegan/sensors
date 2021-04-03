#!/bin/bash
docker rm -f sensors
docker pull joshkeegan/sensors
/bin/bash install.sh