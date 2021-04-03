FROM python:3.9-slim-buster
WORKDIR /app
COPY src/* .

RUN apt-get update && \
    apt-get install -y gcc && \
    # Clean up apt lists & temp dir to not bloat the layer
	rm -rf /var/lib/apt/lists/* /tmp/*

RUN pip install falcon gunicorn mh-z19

CMD gunicorn -b 0.0.0.0:80 server:api