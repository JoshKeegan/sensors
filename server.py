import falcon
import mh_z19

class Sensors:
    def on_get(self, req, resp):
        co2Sensor = mh_z19.read_all()

        sensors = {
            "co2": co2Sensor.co2
        }

        resp.media = sensors

api = falcon.API()
api.add_route("/sensors", Sensors())