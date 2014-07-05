# Create extra config file for elasticsearch
ELASTICSEARCH_CONF='/opt/local/etc/elasticsearch/elasticsearch.yml'

echo '# core-logger ##############'    >> ${ELASTICSEARCH_CONF}
echo 'cluster.name: core-logger'       >> ${ELASTICSEARCH_CONF}
echo 'network.bind_host: 127.0.0.1'    >> ${ELASTICSEARCH_CONF}
echo 'network.publish_host: 127.0.0.1' >> ${ELASTICSEARCH_CONF}

# Enable service
/usr/sbin/svcadm enable svc:/pkgsrc/elasticsearch:default
