# Add extra configuration to kibana config
KIBANA_CONF='/opt/local/etc/kibana.yml'

mkdir -p /opt/local/etc/kibana/
mdata-get kibana_ssl > /opt/local/etc/kibana/server.pem

echo '# additional config from zone initialization #'  >> ${KIBANA_CONF}
echo 'ssl_key_file:  /opt/local/etc/kibana/server.pem' >> ${KIBANA_CONF}
echo 'ssl_cert_file: /opt/local/etc/kibana/server.pem' >> ${KIBANA_CONF}
echo 'log_file:      /var/log/kibana.log'              >> ${KIBANA_CONF}

# reEnable service
/usr/sbin/svcadm restart svc:/pkgsrc/kibana:default
