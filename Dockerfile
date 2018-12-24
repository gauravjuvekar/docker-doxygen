FROM ubuntu:latest
MAINTAINER Gaurav Juvekar <gauravjuvekar@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3-pip \
	git \
	scons \
    doxygen \
    graphviz \
    plantuml \
    dia \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 --no-cache-dir install doxypypy
COPY doxypypy_filter /usr/local/bin
