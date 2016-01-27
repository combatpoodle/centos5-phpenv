FROM centos:centos5.11

RUN yum -y install epel-release && rm -rf /var/cache/yum

RUN rpm -iUvh http://rpms.famillecollet.com/enterprise/remi-release-5.rpm

RUN yum -y install --enablerepo=remi         \
        php                                  \
        mod_ssl                              \
        php-JsonSchema                       \
        php-cli                              \
        php-composer-installers              \
        php-devel                            \
        php-gd                               \
        php-jsonlint                         \
        php-mysql                            \
        php-xhprof                           \
        xhprof                               \
        php-pecl-ssh2                        \
        php-bcmath                           \
        php-dba                              \
        php-embedded                         \
        php-enchant                          \
        php-fpm                              \
        php-imap                             \
        php-interbase                        \
        php-ldap                             \
        php-litespeed                        \
        php-mcrypt                           \
        php-mssql                            \
        php-oci8                             \
        php-odbc                             \
        php-pgsql                            \
        php-pspell                           \
        php-recode                           \
        php-snmp                             \
        php-soap                             \
        php-tidy                             \
        php-xmlrpc                           \
    && rm -rf /var/cache/yum
