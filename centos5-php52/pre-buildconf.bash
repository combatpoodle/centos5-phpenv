#!/bin/bash

(
	set -x

	cd $PHPENV_ROOT/php-src
	rm -rf ext/mongo
)