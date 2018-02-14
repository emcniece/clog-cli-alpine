#!/bin/sh

SHA=$(git rev-parse --short HEAD)
TAG=$(git describe --abbrev=0 --tags)
FILENAME="clog-$TAG-x86_64-alpine-linux-musl.tar.gz"

echo "# Building clog-cli from branch: $BRANCH"
echo "# Commit: $SHA"
echo "# Tag: $TAG"
echo "# Output Filename: $FILENAME"

rm -rf /output/*

cargo build --release

cp target/release/clog /output
tar -zcvf $FILENAME /output/clog

echo "Build complete!"