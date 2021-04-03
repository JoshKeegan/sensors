#!/bin/bash
docker stop sensors
docker pull joshkeegan/sensors
docker start sensors