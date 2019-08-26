# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

For a full diff see [`0.4.2...master`](https://github.com/localheinz/composer-normalize-action/compare/0.4.2...master).

### Changed

* Started using `php:7.3-cli-alpine` instead of `php:7.3-alpine` as Docker base image ([#39](https://github.com/localheinz/composer-normalize-action/pull/39)), by [@localheinz](https://github.com/localheinz)
* Requiring `localheinz/composer-normalize` only when value of `COMPOSER_NORMALIZE_VERSION` environment variable is different from initially installed version ([#40](https://github.com/localheinz/composer-normalize-action/pull/40)), by [@localheinz](https://github.com/localheinz)

## [`0.4.2`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.4.2)

For a full diff see [`0.4.1...0.4.2`](https://github.com/localheinz/composer-normalize-action/compare/0.4.1...0.4.2).

### Fixed

* Workflow configuration and example ([#37](https://github.com/localheinz/composer-normalize-action/pull/37)), by [@localheinz](https://github.com/localheinz)

## [`0.4.1`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.4.1)

For a full diff see [`0.4.0...0.4.1`](https://github.com/localheinz/composer-normalize-action/compare/0.4.0...0.4.1).

### Fixed

* Use environment variable `COMPOSER_NORMALIZE_VERSION` directly instead of input parameter `composer-normalize-version` and require corresponding version of `localheinz/composer-normalize` in `entrypoint.sh` ([#36](https://github.com/localheinz/composer-normalize-action/pull/36)), by [@localheinz](https://github.com/localheinz)

For a full diff see [`0.4.0...master`](https://github.com/localheinz/composer-normalize-action/compare/0.4.0...master).

## [`0.4.0`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.4.0)

For a full diff see [`0.3.1...0.4.0`](https://github.com/localheinz/composer-normalize-action/compare/0.3.1...0.4.0).

### Changed

* Provided metadata for the action via `action.yml` ([#28](https://github.com/localheinz/composer-normalize-action/pull/28)), by [@localheinz](https://github.com/localheinz)
* Adjusted `action.yml` to allow specifying the version of `localheinz/composer-normalize` that should be used by the action ([#29](https://github.com/localheinz/composer-normalize-action/pull/29)), by [@localheinz](https://github.com/localheinz)

## [`0.3.1`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.3.1)

For a full diff see [`0.3.0...0.3.1`](https://github.com/localheinz/composer-normalize-action/compare/0.3.0...0.3.1).

### Changed

* Updated `README.md` to reflect migration to `yml` format ([#25](https://github.com/localheinz/composer-normalize-action/pull/25)), by [@localheinz](https://github.com/localheinz)

## [`0.3.0`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.3.0)

For a full diff see [`0.2.5...0.3.0`](https://github.com/localheinz/composer-normalize-action/compare/0.2.5...0.3.0).

### Changed

* Updated `localheinz/composer-normalize` ([#23](https://github.com/localheinz/composer-normalize-action/pull/23)), by [@localheinz](https://github.com/localheinz)

## [`0.2.5`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.2.5)

For a full diff see [`0.2.3...0.2.4`](https://github.com/localheinz/composer-normalize-action/compare/0.2.4...0.2.5).

### Fixed

* Started copying global `.composer` directory from Docker image into GitHub home directory in `entrypoint.sh` ([#18](https://github.com/localheinz/composer-normalize-action/pull/18)), by [@localheinz](https://github.com/localheinz)

## [`0.2.4`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.2.4)

For a full diff see [`0.2.3...0.2.4`](https://github.com/localheinz/composer-normalize-action/compare/0.2.3...0.2.4).

### Fixed

* Switched to installing `localheinz/composer-normalize` when building the Docker image ([#10](https://github.com/localheinz/composer-normalize-action/pull/10)), by [@localheinz](https://github.com/localheinz)

## [`0.2.3`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.2.3)

For a full diff see [`0.2.2...0.2.3`](https://github.com/localheinz/composer-normalize-action/compare/0.2.2...0.2.3).

### Fixed

* Switched back to deploying via Travis ([#9](https://github.com/localheinz/composer-normalize-action/pull/9)), by [@localheinz](https://github.com/localheinz)

## [`0.2.1`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.2.1)

For a full diff see [`0.2.0...0.2.1`](https://github.com/localheinz/composer-normalize-action/compare/0.2.0...0.2.1).

### Fixed

* Switched to using auto-builds on Docker hub instead of deploying from Travis ([#7](https://github.com/localheinz/composer-normalize-action/pull/7)), by [@localheinz](https://github.com/localheinz)

## [`0.2.0`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.2.0)

For a full diff see [`0.1.0...0.2.0`](https://github.com/localheinz/composer-normalize-action/compare/0.1.0...0.2.0).

### Fixed

* Switched to using the `root` user in `Dockerfile` to allow access to the GitHub workspace ([#6](https://github.com/localheinz/composer-normalize-action/pull/6)), by [@localheinz](https://github.com/localheinz)

## [`0.1.0`](https://github.com/localheinz/composer-normalize-action/releases/tag/0.1.0)

For a full diff see [`afa2393...0.1.0`](https://github.com/localheinz/composer-normalize-action/compare/afa2393...0.1.0).
