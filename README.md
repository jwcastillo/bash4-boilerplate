# `__NAME__`

<br>

<p align="left">
  <a href="__REPO__/__NAME__">
    <img src="__REPO__/__NAME__.svg?branch=master"
        alt="Travis-CI">
  </a>
  <a href="__REPO__/__NAME__/tree/master/build">
    <img src="https://img.shields.io/badge/Docker-Support-blue.svg"
        alt="Docker">
  </a>
</p>

<br>

## Description

__LONG_DESCRIPTION__

  > Before use **__NAME__** please see **[Requirements](#requirements)**.

## How To Use

It's simple:

```bash
# Clone this repository
git clone __REPO__/__NAME__

# Go into the repository
cd __NAME__

# Install
./setup.sh install

# Run the app
__NAME__ <params>
```

> * symlink to `bin/__NAME__` is placed in `/usr/local/bin`
> * man page is placed in `/usr/local/man/man8`

## External tools

**__NAME__** support external tools for security scans:

## Docker

The configuration is contained in the **Dockerfile**.

### Build image

```bash
cd __NAME__/build
docker build --rm -t __NAME__ -f Dockerfile .
```

### Run container

```bash
docker run --rm -it --name __NAME__ __NAME__ -d <params>
```

## Requirements

This tool working with:

- **GNU/Linux** (testing on Debian and CentOS)
- **[Bash](https://www.gnu.org/software/bash/)** (testing on 4.4.19)

## Parameters

Provides the following options:

```bash
    __NAME__ __VERSION__

Usage:
    __NAME__ <option|long-option>

  Examples:
    __NAME__ --help

  Options:
        --help                                show this message
```

## Contributing

See **[this](CONTRIBUTING.md)**.

## License

GPLv3 : <http://www.gnu.org/licenses/>

**Free software, Yeah!**
