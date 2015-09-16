# mi-core-logger

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Remote logging server with rsyslog, elasticsearch and kibana. For security reasons the elasticsearch only listens on localhost and doesn't join any cluster automatically. We recommend to firewall the remote syslog service. Without any firewall everybody is able to send syslog data to logstash.

**Warning elasticsearch needs lot's of memory :-)**

## mdata variables

- `kibana_ssl`  [*]: ssl cert, key and CA for nginx in pem format
- `kibana_auth` [*]: htpasswd authentication data (username:password_hash)
- `syslog_ssl`  [*]: ssl cert, key and CA for syslog in pem format

[*] is required to work properly. 

## services

- `80/tcp`  : http redirect to https
- `443/tcp` : https webinterface for kibana
- `5514/tcp`: remote syslog service with ssl encryption
- `5514/udp`: default remote syslog service
