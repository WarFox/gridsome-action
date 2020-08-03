#!/usr/bin/env bash

version=${1:-"latest"}

echo "Installing gridsome version ${version}"
sudo npm install --unsafe-perm -g gridsome@"${version}"
echo "> gridsome --version"

echo "> gridsome build"
gridsome build
