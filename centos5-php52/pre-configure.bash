#!/bin/bash

(
	set -x
	cd $PHPENV_ROOT/php-src;
	wget http://museum.php.net/php5/php-5.2.17.tar.gz
	tar -xvzf php-5.2.17.tar.gz
	yes y | cp -a php-5.2.17/* .
	rm -rf php-5.2.17
)