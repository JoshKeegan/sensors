FROM python:3.9-slim-buster
WORKDIR /app
COPY . .

RUN pip install falcon gunicorn

CMD gunicorn -b 0.0.0.0:8080 server:api