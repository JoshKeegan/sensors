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