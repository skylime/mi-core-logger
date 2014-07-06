# mi-core-logger

Please refer to https://github.com/joyent/mibe for use of this repo.

## description

Remote logging server with logstash, elasticsearch and kibana. For security reason the elasticsearch only listen on localhost and didn't join any cluster automatically. We recommend to firewall the remote syslog service. Without any firewall everybody is able to send syslog data to logstash.

**Warning elasticsearch needs lot's of memory :-)**

The logstash configuration file is provided in `copy/opt/logstash/etc/core-logger.conf`.

## mdata variables

- `nginx_ssl` (required): ssl cert, key and CA for nginx in pem format
- `logstash_ssl` (required): ssl cert, key and CA for syslog in pem format

## services

- `80/tcp`: http redirect to https
- `443/tcp`: https webinterface for roundcube
- `5514/tcp`: default remote syslog service
- `5514/udp`: default remote syslog service
- `5515/tcp`: extra syslog service with ssl encryption
