# composer-normalize-action

[![Build Status](https://travis-ci.com/localheinz/composer-normalize-action.svg?branch=master)](https://travis-ci.com/localheinz/composer-normalize-action)

## What does this action do?

This action runs [`localheinz/composer-normalize`](https://github.com/localheinz/composer-normalize) with the `--dry-run` option.

That is, when you enable this action, the action will fail when a `composer.json` is pushed that is not valid or not already normalized.

## Usage

Define a workflow in `.github/main.workflow` like this:

```
workflow "Main" {
  on = "push"
  resolves = ["composer-normalize"]
}

action "composer-normalize" {
  uses = "docker://localheinz/composer-normalize-action"
}
```

You can also use a specific tag, for example, `0.2.4` (otherwise, `latest` will be used).

```
workflow "Main" {
  on = "push"
  resolves = ["composer-normalize"]
}

action "composer-normalize" {
  uses = "docker://localheinz/composer-normalize-action:0.2.4"
}
```

:bulb: Also see [GitHub Actions: Using a Dockerfile image in an action](https://developer.github.com/actions/managing-workflows/workflow-configuration-options/#using-a-dockerfile-image-in-an-action)

## Docker

A docker image is automatically built and pushed to Docker Hub, see [`localheinz/composer-normalize-action`](https://cloud.docker.com/repository/docker/localheinz/composer-normalize-action).

You can execute the image by running

```
$ docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app localheinz/composer-normalize-action
```

:bulb: Also see [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

## Changelog

Please have a look at [`CHANGELOG.md`](CHANGELOG.md).

## Contributing

Please have a look at [`CONTRIBUTING.md`](.github/CONTRIBUTING.md).

## Code of Conduct

Please have a look at [`CODE_OF_CONDUCT.md`](.github/CODE_OF_CONDUCT.md).

## License

This package is licensed using the MIT License.

## Credits

The implementation of this GitHub action is largely inspired by the work of [Oskar Stark](https://github.com/OskarStark) on the GitHub actions [`OskarStark/php-cs-fixer-ga`](https://github.com/OskarStark/php-cs-fixer-ga) and [`OskarStark/phpstan-ga`](https://github.com/OskarStark/phpstan-ga).
