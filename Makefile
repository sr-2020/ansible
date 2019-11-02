NAMESPACE := sr2020
IMAGE := ansible
GIT_TAG := $(shell git tag -l --points-at HEAD | cut -d "v" -f 2)
TAG := :$(or ${tag},${tag},$(or ${GIT_TAG},${GIT_TAG},latest))

build:
	docker build -t ${NAMESPACE}/${IMAGE}${TAG} .

push:
	docker push ${NAMESPACE}/${IMAGE}
