# `bash4-boilerplate`

<h5 align="center">This project is constantly updated</h5>

I'm not saying that this template is perfect, many things could be done better, otherwise I will be very happy if even some of these things will be used by you.

I am waiting for your advice, tips and recommendations!

## Bash style

I would like you to stick to certain standards of writing in bash. I realize that it is not easy and time-consuming if you have certain habits. I do not expect 100% compliance and adherence to good practices, however, I would like you to try to use certain principles.

The following should help:

- [http://wiki.bash-hackers.org/](http://wiki.bash-hackers.org/)
- [https://google.github.io/styleguide/shell.xml](https://google.github.io/styleguide/shell.xml)
- [https://github.com/progrium/bashstyle](https://github.com/progrium/bashstyle)
- [http://kvz.io/blog/2013/11/21/bash-best-practices/](http://kvz.io/blog/2013/11/21/bash-best-practices/)
- [https://github.com/dylanaraps/pure-bash-bible](https://github.com/dylanaraps/pure-bash-bible)

## Some boilerplate functions

- **travis-ci** compatibility with **shellcheck**
- functions separated into files (`lib` directory)
- provided standard library (files with functions) in `lib/standard`
- logging into the file with `_logger` function (optional)
- displaying data to the screen with `_sprintf` function (optional)

## Create your project

**1. Clone this repository**

```bash
git clone https://github.com/trimstray/bash4-boilerplate
```

**2. Go into the repository**

```bash
cd bash4-boilerplate
```

**3. Edit `build/metadata` and run**

```bash
cd build
./init.sh
```

**4. Prepare your bash script environment**

- create git repository, prepare `.git/config` file
- update `project/README.md`
- update `project/doc/man/your-script.sh.8`
- update script settings in `project/src/settings`:
    - `_version` - set script version
    - `if_root` - if you run your script only for root
    - `commands` - stores external commands used by script, e.g. `curl`
    - `_fd_stack` - stores external files with functions or variables
- updated `project/Dockerfile` if you prepared docker image
- updated `_opt_values` array in `project/src/__init__` - stores the required variables for the script parameters (if the script can not work without them)
- include function from standard lib (`lib/standard`), e.g. `_load standard/random/_rand` for generate random values
- add your code in this block:
```bash
  ################################# USER SPACE #################################
  # ````````````````````````````````````````````````````````````````````````````
  # Put here all your variable declarations, function calls
  # and all the other code blocks.

  # Load external functions (from lib/ directory).
  _load standard/random/_rand



  # ````````````````````````````````````````````````````````````````````````````
```

Also remember about this few things:

- logs are stored in `log/<script_name>.<date>.log`
- logs from comands output are stored in `log/stdout.log` file
- add new script params to `_short_opt`, `_long_opt` and in `case` statement
    - also you should updated `_help_()` in `project/src/helpers` and man page in `project/doc/man8/`
- default script params are `-h|--help` and `--ignore-failed`

**5. First start!**

```bash
cd ../your-script.sh
./bin/your-script.sh --help
```

## Contributing

See **[this](CONTRIBUTING.md)**.

## License

GPLv3 : <http://www.gnu.org/licenses/>

**Free software, Yeah!**
