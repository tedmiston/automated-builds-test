export DOCKER_BUILDKIT=1

IMAGE := $(IMAGE_NAME)

.PHONY: _build
_build:
	docker build --file $(file) --tag $(IMAGE):$(tag) .

.PHONY: _run
_run:
	docker run --rm -it $(IMAGE):$(tag)

.PHONY: _push
_push:
	docker push $(name):$(tag)

.PHONY: build-base
build-base:
	make file=Dockerfile tag=base _build

.PHONY: clean
clean:
	rm one/Dockerfile two/Dockerfile

include */Makefile

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
