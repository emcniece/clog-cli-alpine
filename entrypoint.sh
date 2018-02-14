#!/bin/sh

echo "Building clog-cli from branch: $BRANCH"

cargo build --release
cp target/release/clog /output
cp /output/clog "/output/clog-alpine-$BRANCH"

echo "Build complete!"