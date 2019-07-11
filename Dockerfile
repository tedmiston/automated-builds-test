# This is only one part of the Dockerfile due to hook overrides in Automated Builds on Docker Hub

FROM alpine AS base

COPY run_tests.sh /run_tests.sh

RUN echo hey stage 0
CMD echo cmd stage 0
