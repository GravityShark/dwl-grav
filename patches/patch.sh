#!/usr/bin/env sh
if [ $# -ne 1 ]; then
        echo "./patch.sh <patch>"
        exit 1
fi

base=$(basename $1 .patch)
git switch $base || git switch -c $base
cd $(git rev-parse --show-toplevel)
git am -3 patches/$1 #&& git switch grav
