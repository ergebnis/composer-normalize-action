# composer-normalize-action

[![Build Status](https://travis-ci.com/localheinz/composer-normalize-action.svg?branch=master)](https://travis-ci.com/localheinz/composer-normalize-action)

## What does this action do?

This action runs [`localheinz/composer-normalize`](https://github.com/localheinz/composer-normalize) with the `--dry-run` option.

That is, when you enable this action, the action will fail when a `composer.json` is pushed that is not valid or not already normalized.

## Usage

Define a workflow in `.github/workflows/ci.yml` (or add a job if you already have defined workflows).

:bulb: Read more about [Configuring a workflow](https://help.github.com/en/articles/configuring-a-workflow).

There are two ways of using this action:

* using the pre-built Docker image (faster)
* letting GitHub build the Docker image for you (slower)

### Pre-built Docker image

As an integration with [Travis CI](https://travis-ci.com) automatically builds and pushes a Docker image when a new tag is created in this repository, the recommended way to use this action is to reference the pre-built Docker image directly:

```yaml
name: CI

on: push

jobs:
  composer-normalize:
    name: composer-normalize
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: composer-normalize-action
        uses: docker://localheinz/composer-normalize-action:latest
```

Instead of using the latest pre-built Docker image, you can also specify a Docker image tag (which corresponds to the tags available here on GitHub):

```yaml
name: CI

on: push

jobs:
  composer-normalize:
    name: composer-normalize
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: composer-normalize-action
        uses: docker://localheinz/composer-normalize-action:0.4.2
```

You can also execute the image directly by running

```
$ docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app localheinz/composer-normalize-action
```

:bulb: Also see [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

### GitHub Repository

If you prefer to have GitHub to build the image for you, you can specify the repository instead:

```yaml
name: CI

on: push

jobs:
  composer-normalize:
    name: composer-normalize
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: composer-normalize-action
        uses: localheinz/composer-normalize-action@master
```

Instead of using the `master` branch, you can also specify a tag:

```yaml
name: CI

on: push

jobs:
  composer-normalize:
    name: composer-normalize
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: composer-normalize-action
        uses: localheinz/composer-normalize-action@0.4.2
```

### Environment Variables

If you wish to specify the version of [`localheinz/composer-normalize`](https://github.com/localheinz/composer-normalize)  that should be used by the action, you can use the `COMPOSER_NORMALIZE_VERSION` environment variable:

```yaml
name: CI

on: push

jobs:
  composer-normalize:
    name: composer-normalize
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: composer-normalize-action
        uses: docker://localheinz/composer-normalize-action:0.4.2
        env:
          COMPOSER_NORMALIZE_VERSION: '^1.3.0'
```

This value will be passed to [`entrypoint.sh`](entrypoint.sh) where it will be used for running

```
$ composer global require localheinz/composer-normalize:$COMPOSER_NORMALIZE_VERSION
```

It can be any value that is understood by [`composer`](https://getcomposer.org/doc/articles/versions.md).

## Examples

To see this action in action, take a look at the following checks:

* https://github.com/localheinz/composer-normalize-action-example/pull/1/checks
* https://github.com/localheinz/composer-normalize-action-example/pull/2/checks
* https://github.com/localheinz/composer-normalize-action-example/pull/3/checks

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
