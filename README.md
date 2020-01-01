# composer-normalize-action

[![Continuous Deployment](https://github.com/ergebnis/composer-normalize-action/workflows/Continuous%20Deployment/badge.svg)](https://github.com/ergebnis/composer-normalize-action/actions)
[![Continuous Integration](https://github.com/ergebnis/composer-normalize-action/workflows/Continuous%20Integration/badge.svg)](https://github.com/ergebnis/composer-normalize-action/actions)

## What does this action do?

This action runs [`ergebnis/composer-normalize`](https://github.com/ergebnis/composer-normalize).

## Usage

Define a workflow in `.github/workflows/continuous-integration.yml` (or add a job if you already have defined workflows).

:bulb: Read more about [Configuring a workflow](https://help.github.com/en/articles/configuring-a-workflow).

### Default Behaviour

By default this action will run

```
$ composer normalize --dry-run
```

in the working directory.

When you use this action in a step with the default behaviour, the step will fail when `composer.json`

- does not exist in this directory (be sure to checkout the code first, see [`actions/checkout`](https://github.com/actions/checkout))
- is not valid
- is not already normalized

Here's an example for a workflow configuration with the default behaviour:

```yaml
name: "Continuous Integration"

on: "push"

jobs:
  composer-normalize:
    name: "composer-normalize"

    runs-on: "ubuntu-latest"

    steps:
      - name: "Checkout"
        uses: "actions/checkout@v2.0.0"

      - name: "Run composer normalize"
        uses: "docker://ergebnis/composer-normalize-action:latest"
```

To see this action in action, take a look at the following checks:

* https://github.com/ergebnis/composer-normalize-action-example/pull/1/checks
* https://github.com/ergebnis/composer-normalize-action-example/pull/2/checks
* https://github.com/ergebnis/composer-normalize-action-example/pull/3/checks

### Custom Behavior

If you prefer to specify [arguments](https://github.com/ergebnis/composer-normalize/tree/master#arguments) or [options](https://github.com/ergebnis/composer-normalize/master#options) yourself, you can configure those using the `args` option:

```diff
 name: "Continuous Integration"

 on: "push"

 jobs:
   composer-normalize:
     name: "composer-normalize"

     runs-on: "ubuntu-latest"

     steps:
       - name: "Checkout"
         uses: "actions/checkout@v2.0.0"

       - name: "Run composer normalize"
         uses: "docker://ergebnis/composer-normalize-action:latest"
+        with:
+          args: "normalize ./sub-directory/composer.json"
```

### Docker image

As Docker images are automatically built and pushed on a merge to `master` or when a new tag is created in this repository, the recommended way to use this GitHub action is to reference the pre-built Docker image directly, as seen above.

:bulb: The Docker image can also be executed directly by running

```
$ docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ergebnis/composer-normalize-action:latest
```

For more information, see the [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

Instead of using the latest pre-built Docker image, you can also specify a Docker image tag (which corresponds to the tags [released on GitHub](https://github.com/ergebnis/composer-normalize-action/releases)):

```diff
 name: Continuous Integration

 on: push

 jobs:
   composer-normalize:
     name: "composer-normalize"

     runs-on: "ubuntu-latest"

     steps:
       - name: "Checkout"
         uses: "actions/checkout@v2.0.0"

       - name: "Run composer normalize"
-        uses: "docker://ergebnis/composer-normalize-action:latest"
+        uses: "docker://ergebnis/composer-normalize-action:0.6.0"
```

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
