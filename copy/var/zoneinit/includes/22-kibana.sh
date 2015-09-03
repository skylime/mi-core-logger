# Add cert for https from mdata

mkdir -p /opt/local/etc/kibana/
mdata-get kibana_ssl > /opt/local/etc/kibana/server.pem

# reEnable service
/usr/sbin/svcadm restart svc:/pkgsrc/kibana:default
