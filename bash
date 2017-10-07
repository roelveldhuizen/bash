#!/usr/bin/env bash

set -eux

composer install --no-dev

files=(`cat ".distignore"`)

for item in "${files[@]}"; do
  if [ -e $item ]; then
    rm -fr $item
  fi
done
