#!/bin/bash
docker stop sensors
docker pull joshkeegan/sensors
/bin/bash install.sh