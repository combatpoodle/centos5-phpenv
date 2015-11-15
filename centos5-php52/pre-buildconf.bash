#!/bin/bash

(
	set -x

	cd $PHPENV_ROOT/php-src

	cd ext
	rm -rf mongo
	wget http://pecl.php.net/get/phar-2.0.0.tgz
	tar -xvzf phar-2.0.0.tgz
	mv phar-2.0.0 phar
)