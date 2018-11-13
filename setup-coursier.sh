#!/usr/bin/env bash
set -e

git clone https://github.com/coursier/coursier.git -b topic/publish
cd coursier
sbt cli/pack
cd ..

mkdir -p bin
ln -s coursier/modules/cli/target/pack/bin/coursier bin/coursier
