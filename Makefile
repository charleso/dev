.PHONY: base haskell-build haskell-dev all

all: haskell-build haskell-dev

base: base/Dockerfile
	docker build -t markhibberd/base base
	docker push markhibberd/base

haskell-build: haskell/build/Dockerfile base
	docker build -t markhibberd/haskell-build haskell/build
	docker push markhibberd/haskell-build

haskell-dev: haskell/dev/Dockerfile haskell-build
	docker build -t markhibberd/haskell-dev haskell/dev
	docker push markhibberd/haskell-dev
