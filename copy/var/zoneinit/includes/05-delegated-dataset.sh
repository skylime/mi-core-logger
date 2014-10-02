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
fi
