# Sensors
Simple HTTP Server to expose sensors attached to a Raspberry Pi.

Data is intended for consumption via telegraf.

Code is containerised & cross-compiled with buildx, and then deployed onto the raspberry pi with `docker run --rm -d -p:80:8080 --name sensors joshkeegan/sensors`

## Current sensors
 - MH-Z19C (CO2 sensor)