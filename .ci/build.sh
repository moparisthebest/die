#!/bin/bash
set -exo pipefail

echo "starting build for TARGET $TARGET"

DISABLE_TESTS=${DISABLE_TESTS:-0}

cross build --target $TARGET

if [ $DISABLE_TESTS -ne 1 ]
then
    cross test --target $TARGET
fi

echo 'build success!'
exit 0
