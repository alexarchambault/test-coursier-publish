#!/usr/bin/env bash
set -e

git clone https://github.com/coursier/coursier.git -b topic/publish
cd coursier
sbt cli/pack
cd ..

coursier() {
  coursier/modules/cli/target/pack/bin/coursier "$@"
}


coursier publish . \
  --sonatype \
  --org com.github.alexarchambault.test \
  --version 0.2.0-SNAPSHOT
