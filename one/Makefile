STAGE_ONE_TAG := latest-$(STAGE_ONE_TARGET)

.PHONY: build-one
build-one: build-base
	make file=one/Dockerfile tag=$(STAGE_ONE_TAG) _build

.PHONY: run-one
run-one:
	make tag=$(STAGE_ONE_TAG) _run

.PHONY: push-one
push-one:
	make name=$(IMAGE) tag=$(STAGE_ONE_TAG) _push
