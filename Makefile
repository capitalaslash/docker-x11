#! /bin/bash

.phony: build run

build:
	docker build -t xclock .

run:
	docker run \
  	  -ti --rm \
  	  --net=host \
  	  -e DISPLAY \
	  -v /tmp/.X11-unix:/tmp/.X11-unix \
	  -v $(HOME)/.Xauthority:/home/developer/.Xauthority \
	  xclock

