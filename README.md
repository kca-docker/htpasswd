[![Docker Image Size](https://badgen.net/docker/size/bksolutions/htpasswd?icon=docker&label=image%20size)](https://hub.docker.com/r/bksolutions/htpasswd/)
[![Docker Pulls](https://badgen.net/docker/pulls/bksolutions/htpasswd?icon=docker&label=pulls)](https://hub.docker.com/r/bksolutions/htpasswd/)
[![Docker Stars](https://badgen.net/docker/stars/bksolutions/htpasswd?icon=docker&label=stars)](https://hub.docker.com/r/bksolutions/htpasswd/)
![Github stars](https://badgen.net/github/stars/kca-docker/htpasswd?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/kca-docker/htpasswd?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/kca-docker/htpasswd)
![Github last-commit](https://img.shields.io/github/last-commit/kca-docker/htpasswd)




# htpasswd  <!-- omit in toc -->

# Content  <!-- omit in toc -->

- [Getting Started](#getting-started)
  - [Usage](#usage)
  - [Parameter](#parameter)
    - [htpasswd](#htpasswd)
  - [Example](#example)
    - [Create password](#create-password)


# Getting Started

These instructions will cover usage information and for the docker container 

## Usage

```shell
$ docker run --rm bksolutions/htpasswd <parameter>
```
```shell
$ docker run --rm bksolutions/htpasswd:latest <parameter>
```

## Parameter 

### htpasswd

**Usage**:

    htpasswd [-cimB25dpsDv] [-C cost] [-r rounds] passwordfile username
    htpasswd -b[cmB25dpsDv] [-C cost] [-r rounds] passwordfile username password

    htpasswd -n[imB25dps] [-C cost] [-r rounds] username
    htpasswd -nb[mB25dps] [-C cost] [-r rounds] username password

 * `-c`  Create a new file.
 * `-n`  Don't update file; display results on stdout.
 * `-b`  Use the password from the command line rather than prompting for it.
 * `-i`  Read password from stdin without verification (for script usage).
 * `-m`  Force MD5 hashing of the password (default).
 * `-2`  Force SHA-256 hashing of the password (secure).
 * `-5`  Force SHA-512 hashing of the password (secure).
 * `-B`  Force bcrypt hashing of the password (very secure).
 * `-C`  Set the computing time used for the bcrypt algorithm
     (higher is more secure but slower, default: 5, valid: 4 to 17).
 * `-r`  Set the number of rounds used for the SHA-256, SHA-512 algorithms
     (higher is more secure but slower, default: 5000).
 * `-d`  Force CRYPT hashing of the password (8 chars max, insecure).
 * `-s`  Force SHA-1 hashing of the password (insecure).
 * `-p`  Do not hash the password (plaintext, insecure).
 * `-D`  Delete the specified user.
 * `-v`  Verify password for the specified user.


## Example

### Create password

```shell
$ docker run --rm bksolutions/htpasswd -B -n -b -C 10  <username> <password>
```

**Docker**
  * `--rm` Remove container after exit

**htpasswd**
* `-B` Force bcrypt
* `-n` Display result on stdout
* `-b` Use the password from the command line
* `-C 10` Set the computing time used for the bcrypt algorithm