#!/usr/bin/env bash

# 1) Get the current version so we don't have to change it here every time
VERSION="$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)"

# 2) Move to output directory and replace file in the archive
pushd target/
zip sonar-ws-osgi-$VERSION-sources.jar META-INF/MANIFEST.MF
popd
