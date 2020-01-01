.PHONY: docker help it

DOCKER_IMAGE:=ergebnis/composer-normalize-action

it: docker ## Runs the docker target

docker: ## Builds, tags, and runs the Docker image
	docker build --tag ${DOCKER_IMAGE} .
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}/.build:/app ${DOCKER_IMAGE}:latest

help: ## Displays this list of targets with descriptions
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'
