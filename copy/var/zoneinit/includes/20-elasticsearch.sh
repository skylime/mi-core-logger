# Create extra config file for elasticsearch
ELASTICSEARCH_CONF='/opt/local/etc/elasticsearch'

echo 'cluster.name: core-logger'    >> ${ELASTICSEARCH_CONF}/core-logger.conf
echo 'network.bind_host: 127.0.0.1' >> ${ELASTICSEARCH_CONF}/core-logger.conf

# Enable service
/usr/sbin/svcadm enable svc:/pkgsrc/elasticsearch:default
