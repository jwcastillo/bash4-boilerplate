#!/usr/bin/env bash

# shellcheck shell=bash
# shellcheck disable=SC1091,SC2034

source metadata

cd ../project || exit 1

mv bin/__NAME__ bin/"$__NAME__"
mv doc/man8/__NAME__.8 doc/man8/"$__NAME__".8

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__DATE__/$__DATE__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__NAME__/$__NAME__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__AUTHOR__/$__AUTHOR__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__EMAIL__/$__EMAIL__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s~__REPO__~$__REPO__~g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__VERSION__/$__VERSION__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__SHORT_DESCRIPTION__/$__SHORT_DESCRIPTION__/g"

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" -print0 | \
xargs -0 sed -i "s/__LONG_DESCRIPTION__/$__LONG_DESCRIPTION__/g"
