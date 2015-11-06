# Dockerized CentOS 5 PHPEnv and PHP 5.2

Either run `build-and-release.sh` to build your own, or pull from dockerhub:

```bash
docker pull israelshirk/centos5-phpenv
docker pull israelshirk/centos5-php52
```

### Variations from standard
* PHPenv needed a couple of patches because of changes on submodules; I've just patched with [recent versions](centos5-phpenv/phpenv.bash) to resolve this.
* PHPenv's hooks were disabled for some reason; to get PHP 5.2 building properly it's necessary to [disable mongodb](centos5-php52/pre-buildconf.bash) and [fix a syntax error](centos5-php52/pre-configure.bash).
* PHPenv's PHP 5.2 build was targeted at Debian.  The [PHP 5.2 build definition](centos5-php52/php-5.2.Linux.source) is adjusted to work on CentOS 5.

