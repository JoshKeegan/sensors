IMAGE_NAME = joshkeegan/sensors
CONTAINER_NAME = sensors

# Args
#	- params: optional. Additional params to pass to buildx
.PHONY: build
build:
	docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64 --pull $(params) -t $(IMAGE_NAME) .

.PHONY: run
run: build
	docker run --rm -d -p:8080:8080 --name $(CONTAINER_NAME) $(IMAGE_NAME)

.PHONY: stop
stop:
	docker stop $(CONTAINER_NAME)

.PHONY: publish
publish: params=--push
publish: build