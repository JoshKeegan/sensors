IMAGE_NAME = joshkeegan/co2-sensor
CONTAINER_NAME = co2-sensor

.PHONY: build
build:
	docker build --pull -t $(IMAGE_NAME) .

.PHONY: run
run: build
	docker run --rm -d -p:8080:8080 --name $(CONTAINER_NAME) $(IMAGE_NAME)

.PHONY: stop
stop:
	docker stop $(CONTAINER_NAME)