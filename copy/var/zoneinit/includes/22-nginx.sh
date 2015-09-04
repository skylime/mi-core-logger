# Add cert for https from mdata
mkdir -p /opt/local/etc/nginx/ssl
mdata-get kibana_ssl > /opt/local/etc/nginx/ssl/server.pem

# Add htpasswd for kibana from mdata
mkdir -p /opt/local/etc/nginx/conf
mdata-get kibana_auth > /opt/local/etc/nginx/conf/htpasswd

# reEnable service
/usr/sbin/svcadm restart svc:/pkgsrc/nginx:default
