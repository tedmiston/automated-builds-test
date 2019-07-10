STAGE_TWO_TARGET := stage-two
STAGE_TWO_TAG := latest-$(STAGE_TWO_TARGET)

.PHONY: build-two
build-two:
	make target=$(STAGE_TWO_TARGET) tag=$(STAGE_TWO_TAG) _build

.PHONY: run-two
run-two:
	make tag=$(STAGE_TWO_TAG) _run
