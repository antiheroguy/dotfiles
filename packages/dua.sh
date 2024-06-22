#!/bin/bash

curl -LSfs https://raw.githubusercontent.com/Byron/dua-cli/master/ci/install.sh |
  sh -s -- --git Byron/dua-cli --target x86_64-unknown-linux-musl --crate dua --tag v2.17.4
sudo mv ~/.cargo/bin/dua /usr/local/bin/
