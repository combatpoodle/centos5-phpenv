FROM centos:centos5.11

ADD phpenv.patch /phpenv.patch

ENV PATH="/usr/local/rbenv/versions/1.9.3-p551/bin/:/usr/local/bin:/usr/local/rbenv/bin:/usr/local/phpenv/bin:$PATH" \
	RBENV_ROOT="/usr/local/rbenv" \
	PHPENV_ROOT="/usr/local/phpenv" \
	PHP_AUTOCONF="/usr/bin/autoconf-2.13" \
	PHPENV_DEBUG="true" \
	LDFLAGS="-L/usr/lib64/mysql"

RUN \
	echo >> /etc/yum.conf && \
	echo 'multilib_policy=best' >> /etc/yum.conf && \

	yum -y update && \
	yum -y install epel-release && \
	yum -y groupinstall "Development Tools" && \
	yum -y install gcc-c++
			freetds \
			freetds-devel \
			readline \
			readline-devel \
			libtidy \
			libtidy-devel \
			libxslt-devel \
			libxslt \
			httpd \
			mod_ssl \
			wget \
			php \
			which \
			git \
			yum-utils \
			autoconf \
			autoconf213 \
			libgcc \
			httpd-devel \
			libxml2-devel \
			openssl \
			bzip2 \
			bzip2-devel \
			libjpeg \
			libjpeg-devel \
			libXpm \
			libXpm-devel \
			re2c \
			libpng \
			libpng-devel \
			gd \
			gd-devel \
			git \
			curl \
			zlib-devel \
			openssl-devel \
			curl-devel \
			asciidoc \
			xmlto \
			expat-devel \
			ncurses \
			ncurses-devel \
			unixODBC-devel \
			postgresql-devel \
			sqlite-devel \
			aspell-devel \
			net-snmp-devel \
			pcre-devel \
			install \
			gmp \
			gmp-devel \
			libmcrypt \
			libmcrypt-devel \
			mhash-devel \
			mysql.x86_64 \
			mysql-devel.x86_64 \
			mysql-connector-odbc \
	&& \

	yum-builddep php53 && \
	yum-builddep php && \

	git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv && \
	echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && \
	mkdir -p /usr/local/rbenv/plugins && \
	git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build && \
	cd /usr/local/rbenv/plugins/ruby-build && \
	./install.sh && \
	rbenv install --list && \
	rbenv install 1.9.3-p551 && \


	git clone git://github.com/phpenv/phpenv.git /usr/local/phpenv && \
	echo 'eval "$(phpenv init -)"' >> ~/.bash_profile && \
	mkdir -p /usr/local/phpenv/plugins/ && \
	git clone https://github.com/CHH/php-build.git /usr/local/phpenv/plugins/php-build && \
	cd /usr/local/phpenv/plugins/php-build && \
	./install.sh && \

	cd /usr/local/phpenv && \
	git submodule init && \
	git config --global user.email "you@example.com"; git config --global user.name "Your Name" && \
	git apply --index < /phpenv.patch && git add php-ext && git commit -m "lasdkfj" && \
	git submodule update && \
	phpenv install --releases && \
	rm -rf /var/cache/yum

ADD phpenv-hooks /usr/local/phpenv/libexec/phpenv-hooks

