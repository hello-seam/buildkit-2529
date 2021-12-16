FROM ubuntu:20.04 AS base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends build-essential && apt-get clean

FROM base AS jdk

RUN apt-get update && apt-get install -y --no-install-recommends default-jdk && apt-get clean

FROM base AS jre

RUN apt-get update && apt-get install -y --no-install-recommends default-jre && apt-get clean
