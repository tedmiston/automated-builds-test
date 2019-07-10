export DOCKER_BUILDKIT=1

IMAGE := tedmiston/automated-builds-test

.PHONY: _build
_build:
	docker build --target $(target) --tag $(IMAGE):$(tag) .

.PHONY: _run
_run:
	docker run --rm -it $(IMAGE):$(tag)

.PHONY: _push
_push:
	docker push $(name):$(tag)

include *.mk

.PHONY: build-all
build-all:
	make build-one build-two

.PHONY: ls-all
ls-all:
	docker image ls $(IMAGE)

.PHONY: run-all
run-all:
	make run-one run-two

.PHONY: push-all
push-all:
	make push-one push-two
