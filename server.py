import falcon
import mh_z19

class Sensors:
    def on_get(self, req, resp):
        # Pass serial_console_untouched as per instructions for running as non-root
        # as the library expects to be running on native raspberry pi and have access to systemctl.
        # See https://github.com/UedaTakeyuki/mh-z19/wiki/How-to-use-without-root-permission.
        # Note that not all of the info there is relevant, it's not describing how to run in docker!
        co2Sensor = mh_z19.read_all(True)

        sensors = {
            "co2": co2Sensor["co2"],
            "tempC": co2Sensor["temperature"]
        }

        resp.media = sensors

api = falcon.API()
api.add_route("/sensors", Sensors())