FROM alpine AS base

RUN echo hey stage 0
CMD echo cmd stage 0

FROM base AS stage-one
RUN echo hey stage 1
CMD echo cmd stage 1

FROM base AS stage-two
RUN echo hey stage 2
CMD echo cmd stage 2
