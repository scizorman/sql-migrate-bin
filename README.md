# sql-migrate-bin

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/scizorman/sql-migrate-bin)](https://hub.docker.com/r/scizorman/sql-migrate-bin)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)


Docker image of the [sql-migrate](https://github.com/rubenv/sql-migrate) binary.
See [sql-migrate](https://github.com/rubenv/sql-migrate) if you want to know more details.

## How to use

### 1. Create a directory

Create a directory that contains the following files and directories:

```
- dbconfig.yml
- migrations
```

### 2. Execute

Execute the following command:

```console
$ docker run --rm \
    -w="$WORK_DIR" \
    -v "$MOUNT_DIR":"$WORK_DIR" \
    scizorman/sql-migrate-bin \
    <command> [<args>]
```

You may want to create a `Makefile` to easily execute these commands.

#### NOTE

- `WORK_DIR` is your working directory in the docker container
- `MOUNT_DIR` is the directory created in 1.


## License

This library is distributed under the [MIT](LICENSE) license.
