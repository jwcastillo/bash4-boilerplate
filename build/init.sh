#!/usr/bin/env bash

# shellcheck disable=SC1091
source metadata

cd ../project || exit

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__DATE__/$__DATE__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__PROJECT_NAME__/$__PROJECT_NAME__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__AUTHOR__/$__AUTHOR__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__EMAIL__/$__EMAIL__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__REPO__/$__REPO__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__VERSION__/$__VERSION__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__SHORT_DESCRIPTION__/$__SHORT_DESCRIPTION__/g" {} \;

find . -type f -not -path "./build/*" \
       -exec sed -i -e "s/__LONG_DESCRIPTION__/$__LONG_DESCRIPTION__/g" {} \;
