#!/usr/bin/env bash

set -eux

if [ -d "./dmenu" ]; then
    rm -rf ./dmenu
fi
mkdir ./dmenu

git clone https://git.suckless.org/dmenu
cp -r ./patches/. ./dmenu

cd ./dmenu
git apply dmenu-highlight-4.9.diff

sudo make install
