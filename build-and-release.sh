#!/bin/bash

set -x
set -e

docker build -t israelshirk/centos5-phpenv centos5-phpenv
docker build -t israelshirk/centos5-php52 centos5-php52
docker build -t israelshirk/centos5-php54 centos5-php54
