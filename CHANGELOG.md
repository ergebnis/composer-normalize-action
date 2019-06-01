# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

For a full diff see [`0.2.5...master`](https://github.com/localheinz/composer-normalize-action/compare/0.2.5...master).

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
