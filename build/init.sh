#!/usr/bin/env bash

# shellcheck disable=SC1091
source metadata

cd ../project || exit

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__DATE__/$__DATE__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__NAME__/$__NAME__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__AUTHOR__/$__AUTHOR__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__EMAIL__/$__EMAIL__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__REPO__/$__REPO__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__VERSION__/$__VERSION__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__SHORT_DESCRIPTION__/$__SHORT_DESCRIPTION__/g" {} \;

# shellcheck disable=SC2016
find . -type f -not -path "./build/*" \
       -exec sed -i "s/__LONG_DESCRIPTION__/$__LONG_DESCRIPTION__/g" {} \;
