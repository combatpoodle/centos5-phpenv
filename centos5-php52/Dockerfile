FROM israelshirk/centos5-phpenv:latest

ADD php-5.2.Linux.source /usr/local/phpenv/etc/php-5.2.Linux.source
ADD pre-buildconf.bash /usr/local/phpenv/phpenv.d/install/pre-buildconf.bash
ADD pre-configure.bash /usr/local/phpenv/phpenv.d/install/pre-configure.bash

RUN phpenv install php-5.2.17 || (tail -f /tmp/*php*; exit 1)
