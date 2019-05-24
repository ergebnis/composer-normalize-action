.PHONY: docker it

it: docker

docker:
	docker build --tag localheinz/composer-normalize-action .
	docker run --interactive --rm --tty --workdir=/normalizer --volume ${PWD}/.build:/normalizer localheinz/composer-normalize-action:latest
