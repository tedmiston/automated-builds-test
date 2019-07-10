STAGE_ONE_TARGET := stage-one
STAGE_ONE_TAG := latest-$(STAGE_ONE_TARGET)

.PHONY: build-one
build-one:
	make target=$(STAGE_ONE_TARGET) tag=$(STAGE_ONE_TAG) _build

.PHONY: run-one
run-one:
	make tag=$(STAGE_ONE_TAG) _run
