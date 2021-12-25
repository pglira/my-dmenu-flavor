#!/usr/bin/env bash

set -eu

if [ -f "config.h" ]; then
    rm config.h
fi

make clean
make

