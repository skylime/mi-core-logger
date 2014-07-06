#!/bin/bash
# Configure remote logging ssl certificate for logstash

# SSL
mdata-get logstash_ssl > /opt/logstash/etc/logstash.pem
chown logstash:logstash /opt/logstash/etc/logstash.pem
chmod 400 /opt/logstash/etc/logstash.pem
