# Add SSL from mdata
RSYSLOG_CONF='/opt/local/etc/rsyslog'

mkdir -p $RSYSLOG_CONF
mdata-get syslog_ssl > "$RSYSLOG_CONF/cert.pem"

# reEnable service
/usr/sbin/svcadm restart svc:/pkgsrc/rsyslog:default
