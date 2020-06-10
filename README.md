# composer-normalize-action

[![Integrate](https://github.com/ergebnis/composer-normalize-action/workflows/Integrate/badge.svg)](https://github.com/ergebnis/composer-normalize-action/actions)
[![Deploy](https://github.com/ergebnis/composer-normalize-action/workflows/Deploy/badge.svg)](https://github.com/ergebnis/composer-normalize-action/actions)

## What does this action do?

This action runs [`ergebnis/composer-normalize`](https://github.com/ergebnis/composer-normalize).

## Usage

Define a workflow in `.github/workflows/continuous-integration.yml` (or add a job if you already have defined workflows).

:bulb: Read more about [Configuring a workflow](https://help.github.com/en/articles/configuring-a-workflow).

### Default Behaviour

By default this action will run

```
$ composer normalize
```

in the working directory.

When you use this action in a step with the default behaviour, the step will fail when

- `composer.json` does not exist in this directory (be sure to checkout the code first, see [`actions/checkout`](https://github.com/actions/checkout))
- `composer.json` is not valid
- `composer.json` is valid, but `composer.lock` is not up-to-date with `composer.json`

and the step will succeed when

- `composer.json` is valid, `composer.lock` is not present, and `composer.json` and not yet normalized or could be successfully normalized
- `composer.json` is valid, `composer.lock` is present and up-to-date, and `composer.json`, and `composer.json` and not yet normalized or could be successfully normalized

:bulb: If you want the step to fail when `composer.json` is not yet normalized, you need to run with the `--dry-run` options, see below.

Here's an example for a workflow configuration with the default behaviour:

```yaml
name: "Integrate"

on: "push"

jobs:
  composer-normalize:
    name: "composer-normalize"

    runs-on: "ubuntu-latest"

    steps:
      - name: "Checkout"
        uses: "actions/checkout@v2"

      - name: "Run composer normalize"
        uses: "docker://ergebnis/composer-normalize-action:latest"
```

### Custom Behavior

If you prefer to specify [arguments](https://github.com/ergebnis/composer-normalize/tree/main#arguments) or [options](https://github.com/ergebnis/composer-normalize/main#options) yourself, you can configure those using the `args` option:

```diff
 name: "Integrate"

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
+          args: "--diff --dry-run --indent-size=2 --indent-style=space"
```

### Docker image

As Docker images are automatically built and pushed on a merge to `main` or when a new tag is created in this repository, the recommended way to use this GitHub action is to reference the pre-built Docker image directly, as seen above.

:bulb: The Docker image can also be executed directly by running

```
$ docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app ergebnis/composer-normalize-action:latest
```

For more information, see the [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

Instead of using the latest pre-built Docker image, you can also specify a Docker image tag (which corresponds to the tags [released on GitHub](https://github.com/ergebnis/composer-normalize-action/releases)):

```diff
 name: Integrate

 on: push

 jobs:
   composer-normalize:
     name: "composer-normalize"

     runs-on: "ubuntu-latest"

     steps:
       - name: "Checkout"
         uses: "actions/checkout@v2"

       - name: "Run composer normalize"
-        uses: "docker://ergebnis/composer-normalize-action:latest"
+        uses: "docker://ergebnis/composer-normalize-action:0.7.0"
```

## Changelog

Please have a look at [`CHANGELOG.md`](CHANGELOG.md).

## Contributing

Please have a look at [`CONTRIBUTING.md`](.github/CONTRIBUTING.md).

## Code of Conduct

Please have a look at [`CODE_OF_CONDUCT.md`](https://github.com/ergebnis/.github/blob/main/CODE_OF_CONDUCT.md).

## License

This package is licensed using the MIT License.

Please have a look at [`LICENSE.md`](LICENSE.md).

## Credits

The implementation of this GitHub action is largely inspired by the work of [Oskar Stark](https://github.com/OskarStark) on the GitHub actions [`OskarStark/php-cs-fixer-ga`](https://github.com/OskarStark/php-cs-fixer-ga) and [`OskarStark/phpstan-ga`](https://github.com/OskarStark/phpstan-ga).
