import falcon

class Sensors:
    def on_get(self, req, resp):
        sensors = {
            "co2": ("450")
        }

        resp.media = sensors

api = falcon.API()
api.add_route("/sensors", Sensors())