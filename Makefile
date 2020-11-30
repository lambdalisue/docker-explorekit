IMAGE   := lambdalisue/explorekit
VERSION := $$(git describe --tags --always --dirty)

# http://postd.cc/auto-documented-makefile/
.DEFAULT_GOAL := help
.PHONY: help
help: ## Show this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	    | awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s %s\n", $$1, $$2}'

image: FORCE ## Build docker image
	docker build \
		-t ${IMAGE}:${VERSION} \
		-t ${IMAGE}:latest \
		.

push: FORCE ## Push docker images
	docker push ${IMAGE}:${VERSION}
	docker push ${IMAGE}:latest

FORCE:
