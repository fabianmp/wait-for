# wait-for

Simple wrapper Docker container around [wait-for script](https://github.com/eficode/wait-for) to wait for another service to become available.

## Usage

Use the following environment variables to configure the behavior:

| Variable | Description                                 | Default value         |
| -------- | ------------------------------------------- | --------------------- |
| TARGET   | Service address to wait for                 | https://www.google.de |
| TIMEOUT  | Seconds to wait before aborting the request | 0 (wait forever)      |

For more information check the [original documentation](https://github.com/eficode/wait-for#usage).

## Examples

Wait for PostgreSQL database server on host `postgres`:

```sh
docker run -e TARGET="postgres:5432" fabianmp/wait-for:latest
```

Wait for ten seconds for HTTP service at `myhost` to be reachable:

```sh
docker run -e TARGET="http://myhost" -e TIMEOUT=10 fabianmp/wait-for:latest
```
