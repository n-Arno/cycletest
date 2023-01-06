all: build

build:
	docker build . -t cycletest

test:
	docker run cycletest
