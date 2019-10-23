#!/usr/bin/env bash

set -e

RELEASE_VERSION=$(cat release_version.txt)

echo "1"
wget https://github.com/restic/restic/releases/download/v$RELEASE_VERSION/restic-$RELEASE_VERSION.tar.gz
echo "2"
tar -xzf restic-$RELEASE_VERSION.tar.gz
echo "3"
mv restic-$RELEASE_VERSION restic
echo "4"
cd restic
echo "5"
make all
echo "6"
mkdir output
echo "7"
mv restic output/restic-$RELEASE_VERSION
echo "8"
ls -la output
echo "9"
