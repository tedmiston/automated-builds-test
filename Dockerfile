# This is only one part of the Dockerfile due to hook overrides in Automated Builds on Docker Hub

# FROM alpine AS base
FROM debian AS base

RUN apt-get update \
    && apt-get -y install build-essential

RUN echo hey stage 0

CMD echo cmd stage 0


FROM base AS test

COPY ci/Makefile /Makefile
COPY ci/scripts/run_tests_one.sh /run_tests_one.sh
COPY ci/scripts/run_tests_two.sh /run_tests_two.sh
