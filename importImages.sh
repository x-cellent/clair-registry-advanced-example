#!/usr/bin/env sh

set -ex

docker pull ubuntu:16.04
docker tag ubuntu:16.04 registry.local/ubuntu-test
docker push registry.local/ubuntu-test
