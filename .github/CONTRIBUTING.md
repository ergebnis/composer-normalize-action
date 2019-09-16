# CONTRIBUTING

We are using [GitHub Actions](https://github.com/features/actions) as continuous integration system.

For details, see

* [`workflows/continuous-integration.yml`](workflows/continuous-integration.yml).
* [`workflows/continuous-deployment.yml`](workflows/continuous-deployment.yml).

## Docker Image

Run

```
$ make docker
```

to build, tag, and run the Docker image locally.

## Extra lazy?

Run

```
$ make
```

to build, tag, and run the Docker image locally.

:bulb: Run

```
$ make help
```

to display a list of available targets with corresponding descriptions.
