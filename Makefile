.PHONY: docker help it

it: docker ## Runs the docker target

docker: ## Builds, tags, and runs the Docker image
	docker build --tag localheinz/composer-normalize-action .
	docker run --interactive --rm --tty --workdir=/normalizer --volume ${PWD}/.build:/normalizer localheinz/composer-normalize-action:latest

help: ## Displays this list of targets with descriptions
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'
