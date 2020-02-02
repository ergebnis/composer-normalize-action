.PHONY: docker help it

DOCKER_IMAGE:=ergebnis/composer-normalize-action

it: docker ## Runs the docker target

docker: ## Builds, tags, and runs the Docker image
	docker build --tag ${DOCKER_IMAGE} .
    # Run Docker image with default behaviour
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}/.build:/app ${DOCKER_IMAGE}:latest
	# Run Docker image with custom behaviour, specifying options
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}/.build:/app ${DOCKER_IMAGE}:latest --diff --indent-size=1 --indent-style=space --no-update-lock
	# Run Docker image with custom behaviour, specifying argument and options
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ${DOCKER_IMAGE}:latest .build/composer.json --diff --indent-size=2 --indent-style=space  --no-update-lock

help: ## Displays this list of targets with descriptions
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'
