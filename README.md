# mi-core-logger

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Remote logging server with rsyslog, elasticsearch and kibana. For security reasons the elasticsearch only listens on localhost and doesn't join any cluster automatically. We recommend to firewall the remote syslog service. Without any firewall everybody is able to send syslog data to logstash.

**Warning elasticsearch needs lot's of memory :-)**

## mdata variables

- `nginx_ssl` [*]: ssl cert, key and CA for nginx in pem format
- `nginx_auth` [*]: htpasswd authentication data (username:password_hash)
- `logstash_ssl` [*]: ssl cert, key and CA for syslog in pem format

[*] is required to work properly. 

## services

- `80/tcp`: http redirect to https
- `443/tcp`: https webinterface for roundcube
- `5514/tcp`: default remote syslog service
- `5514/udp`: default remote syslog service
- `5515/tcp`: extra syslog service with ssl encryption
