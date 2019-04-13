all: build push
test: build pushtest

build:
	docker build -t demilletech/alpine-utils:local . --no-cache

push:
	docker tag demilletech/alpine-utils:local demilletech/alpine-utils:latest
	docker push demilletech/alpine-utils:latest

pushtest:
	docker tag demilletech/alpine-utils:local demilletech/alpine-utils:test
	docker push demilletech/alpine-utils:latest
