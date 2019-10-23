#!/usr/bin/env bash

set -e

wget -q https://github.com/restic/restic/releases/download/v$RELEASE_VERSION/restic-$RELEASE_VERSION.tar.gz
tar -xzf restic-$RELEASE_VERSION.tar.gz
mv restic-$RELEASE_VERSION restic
cd restic
make all
mkdir output
mv restic output/restic-$RELEASE_VERSION
ls -la output
