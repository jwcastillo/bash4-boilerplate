#!/usr/bin/env bash

readonly _dir="$(dirname "$(readlink -f "$0")")"

# shellcheck disable=SC2034
_arg="$1"

if [[ "$1" == "install" ]] ; then

  printf "%s\\n" "Create symbolic link to /usr/local/bin"

  if [[ -e "${_dir}/bin/__NAME__" ]] ; then

    if [[ ! -e "/usr/local/bin/__NAME__" ]] ; then

      ln -s "${_dir}/bin/__NAME__" /usr/local/bin

    fi

  fi

  printf "%s\\n" "Create man page to /usr/local/man/man8"

  if [[ -e "${_dir}/doc/man8/__NAME__.8" ]] ; then

    if [[ ! -e "/usr/local/man/man8/__NAME__.8.gz" ]] ; then

      mkdir -p /usr/local/man/man8
      cp "${_dir}/doc/man8/__NAME__.8" /usr/local/man/man8
      gzip /usr/local/man/man8/__NAME__.8

    fi

  fi

elif [[ "$1" == "uninstall" ]] ; then

  printf "%s\\n" "Remove symbolic link from /usr/local/bin"

  if [[ -L "/usr/local/bin/__NAME__" ]] ; then

    unlink /usr/local/bin/__NAME__

  fi

  printf "%s\\n" "Remove man page from /usr/local/man/man8"

  if [[ -e "/usr/local/man/man8/__NAME__.8.gz" ]] ; then

    rm /usr/local/man/man8/__NAME__.8.gz

  fi

else

  printf "Usage:\\n  %s\\n  %s\\" \
         "./setup.sh install     (Install)" \
         "./setup.sh uninstall   (Uninstall)"

fi

exit 0
