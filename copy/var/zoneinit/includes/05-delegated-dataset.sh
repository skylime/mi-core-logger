#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/${UUID}/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create ${DDS}/log-remote        || true
	zfs create ${DDS}/log-elasticsearch || true
	zfs create ${DDS}/db-elasticsearch  || true

	zfs set mountpoint=/var/log/remote        ${DDS}/log-remote
	zfs set mountpoint=/var/log/elasticsearch ${DDS}/log-elasticsearch
	zfs set mountpoint=/var/db/elasticsearch  ${DDS}/db-elasticsearch

	zfs set compression=lz4 ${DDS}/log-remote

	chown logstash:adm /var/log/remote
	chown elasticsearch:adm /var/log/elasticsearch
	chown elasticsearch:adm /var/db/elasticsearch
fi
