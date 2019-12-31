# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

For a full diff see [`0.6.0...master`][0.6.0...master].

## [`0.6.0`][0.6.0]

For a full diff see [`0.5.2...0.6.0`][0.5.2...0.6.0].

### Changed

* References after move to [@ergebnis] ([#57]), by [@localheinz]
* Updated `ergebnis/composer-normalize` from `1.3.0` to `2.1.2` ([#59]), by [@localheinz]

## [`0.5.2`][0.5.2]

For a full diff see [`0.5.1...0.5.2`][0.5.1...0.5.2].

### Fixed

* Actually tag Docker image before attempting to push it ([#50]), by [@localheinz]

## [`0.5.1`][0.5.1]

For a full diff see [`0.5.0...0.5.1`][0.5.0...0.5.1].

### Fixed

* Flipped arguments passed to `startsWith()` so Docker images are actually tagged when a tag is created on GitHub ([#49]), by [@localheinz]

## [`0.5.0`][0.5.0]

For a full diff see [`0.4.2...0.5.0`][0.4.2...0.5.0].

### Changed

* Started using `php:7.3-cli-alpine` instead of `php:7.3-alpine` as Docker base image ([#39]), by [@localheinz]
* Requiring `ergebnis/composer-normalize` only when value of `COMPOSER_NORMALIZE_VERSION` environment variable is different from initially installed version ([#40]), by [@localheinz]
* Allow specifying arguments and options for `composer normalize` using the `args` configuration ([#47]), by [@localheinz]

## [`0.4.2`][0.4.2]

For a full diff see [`0.4.1...0.4.2`][0.4.1...0.4.2].

### Fixed

* Workflow configuration and example ([#37]), by [@localheinz]

## [`0.4.1`][0.4.1]

For a full diff see [`0.4.0...0.4.1`][0.4.0...0.4.1].

### Fixed

* Use environment variable `COMPOSER_NORMALIZE_VERSION` directly instead of input parameter `composer-normalize-version` and require corresponding version of `ergebnis/composer-normalize` in `entrypoint.sh` ([#36]), by [@localheinz]

## [`0.4.0`][0.4.0]

For a full diff see [`0.3.1...0.4.0`][0.3.1...0.4.0].

### Changed

* Provided metadata for the action via `action.yml` ([#28]), by [@localheinz]
* Adjusted `action.yml` to allow specifying the version of `ergebnis/composer-normalize` that should be used by the action ([#29]), by [@localheinz]

## [`0.3.1`][0.3.1]

For a full diff see [`0.3.0...0.3.1`][0.3.0...0.3.1].

### Changed

* Updated `README.md` to reflect migration to `yml` format ([#25]), by [@localheinz]

## [`0.3.0`][0.3.0]

For a full diff see [`0.2.5...0.3.0`][0.2.5...0.3.0].

### Changed

* Updated `ergebnis/composer-normalize` ([#23]), by [@localheinz]

## [`0.2.5`][0.2.5]

For a full diff see [`0.2.4...0.2.5`][0.2.4...0.2.5].

### Fixed

* Started copying global `.composer` directory from Docker image into GitHub home directory in `entrypoint.sh` ([#18]), by [@localheinz]

## [`0.2.4`][0.2.4]

For a full diff see [`0.2.3...0.2.4`][0.2.3...0.2.4].

### Fixed

* Switched to installing `ergebnis/composer-normalize` when building the Docker image ([#10]), by [@localheinz]

## [`0.2.3`][0.2.3]

For a full diff see [`0.2.2...0.2.3`][0.2.2...0.2.3].

### Fixed

* Switched back to deploying via Travis ([#9]), by [@localheinz]

## [`0.2.2`][0.2.2]

For a full diff see [`0.2.1...0.2.2`][0.2.1...0.2.2].

### Changed

* Showed some information to allow debugging ([#8]), by [@localheinz]

## [`0.2.1`][0.2.1]

For a full diff see [`0.2.0...0.2.1`][0.2.0...0.2.1].

### Fixed

* Switched to using auto-builds on Docker hub instead of deploying from Travis ([#7]), by [@localheinz]

## [`0.2.0`][0.2.0]

For a full diff see [`0.1.0...0.2.0`][0.1.0...0.2.0].

### Fixed

* Switched to using the `root` user in `Dockerfile` to allow access to the GitHub workspace ([#6]), by [@localheinz]

## [`0.1.0`][0.1.0]

For a full diff see [`afa2393...0.1.0`][afa2393...0.1.0].

[0.1.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.1.0
[0.2.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.0
[0.2.1]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.1
[0.2.2]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.2
[0.2.3]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.3
[0.2.4]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.4
[0.2.5]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.2.5
[0.3.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.3.0
[0.3.1]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.3.1
[0.4.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.4.0
[0.4.1]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.4.1
[0.4.2]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.4.2
[0.5.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.5.0
[0.5.1]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.5.1
[0.5.2]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.5.2
[0.6.0]: https://github.com/ergebnis/composer-normalize-action/releases/tag/0.6.0

[afa2393...0.1.0]: https://github.com/ergebnis/composer-normalize-action/compare/afa2393...0.1.0
[0.1.0...0.2.0]: https://github.com/ergebnis/composer-normalize-action/compare/0.1.0...0.2.0
[0.2.0...0.2.1]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.0...0.2.1
[0.2.1...0.2.2]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.1...0.2.2
[0.2.2...0.2.3]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.2...0.2.3
[0.2.3...0.2.4]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.3...0.2.4
[0.2.4...0.2.5]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.4...0.2.5
[0.2.5...0.3.0]: https://github.com/ergebnis/composer-normalize-action/compare/0.2.5...0.3.0
[0.3.0...0.3.1]: https://github.com/ergebnis/composer-normalize-action/compare/0.3.0...0.3.1
[0.3.1...0.4.0]: https://github.com/ergebnis/composer-normalize-action/compare/0.3.1...0.4.10
[0.4.0...0.4.1]: https://github.com/ergebnis/composer-normalize-action/compare/0.4.0...0.4.1
[0.4.1...0.4.2]: https://github.com/ergebnis/composer-normalize-action/compare/0.4.1...0.4.2
[0.4.2...0.5.0]: https://github.com/ergebnis/composer-normalize-action/compare/0.4.2...0.5.0
[0.5.0...0.5.1]: https://github.com/ergebnis/composer-normalize-action/compare/0.5.0...0.5.1
[0.5.1...0.5.2]: https://github.com/ergebnis/composer-normalize-action/compare/0.5.1...0.5.2
[0.5.2...0.6.0]: https://github.com/ergebnis/composer-normalize-action/compare/0.5.2...0.6.0
[0.6.0...master]: https://github.com/ergebnis/composer-normalize-action/compare/0.6.0...master

[#6]: https://github.com/ergebnis/composer-normalize-action/pull/6
[#7]: https://github.com/ergebnis/composer-normalize-action/pull/7
[#8]: https://github.com/ergebnis/composer-normalize-action/pull/8
[#9]: https://github.com/ergebnis/composer-normalize-action/pull/9
[#10]: https://github.com/ergebnis/composer-normalize-action/pull/10
[#18]: https://github.com/ergebnis/composer-normalize-action/pull/18
[#23]: https://github.com/ergebnis/composer-normalize-action/pull/23
[#25]: https://github.com/ergebnis/composer-normalize-action/pull/25
[#28]: https://github.com/ergebnis/composer-normalize-action/pull/28
[#29]: https://github.com/ergebnis/composer-normalize-action/pull/29
[#36]: https://github.com/ergebnis/composer-normalize-action/pull/36
[#37]: https://github.com/ergebnis/composer-normalize-action/pull/37
[#39]: https://github.com/ergebnis/composer-normalize-action/pull/39
[#40]: https://github.com/ergebnis/composer-normalize-action/pull/40
[#47]: https://github.com/ergebnis/composer-normalize-action/pull/47
[#49]: https://github.com/ergebnis/composer-normalize-action/pull/49
[#50]: https://github.com/ergebnis/composer-normalize-action/pull/50
[#57]: https://github.com/ergebnis/composer-normalize-action/pull/57
[#59]: https://github.com/ergebnis/composer-normalize-action/pull/59

[@localheinz]: https://github.com/localheinz
[@ergebnis]: https://github.com/localheinz
