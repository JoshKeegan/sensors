# Sensors
Simple HTTP Server to expose sensors attached to a Raspberry Pi.

Data is intended for consumption via telegraf.

Code is containerised & cross-compiled with buildx, and then deployed onto the raspberry pi with:
```bash
git clone https://github.com/JoshKeegan/sensors
cd sensors/deploy
./install.sh
```

## Current sensors
 - MH-Z19C (CO2 sensor)

## Calling
HTTP GET to /sensors.  
Returns JSON. Fields are:

| Field | Measurement | Units | Sensor  |
| ----- | ----------- | ----- | ------- |
| co2   | CO2         | ppm   | MH-Z19C |
| tempC | Temperature | C     | MH-Z19C |

Notes: tempC is of unknown accuracy. The MHZ19C sensor needs to know the temperature to correct for it
        when calculating the CO2 concentration. When I tried it in the cold outside (~7C), it reported 2C so it shouldn't be considered to be particularlly accurate. Seems OK at room temperature though...

## Developing
 - Make your changes
 - Run `make publish` to build & publish new docker containers
 - On the Pi, run `./update.sh` from the `deploy` directory to deploy it