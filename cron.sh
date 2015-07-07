#!/usr/bin/env bash
cd /etc/rc
[ ! -f /run/fcron.pid ] || rm /run/fcron.pid
chmod 644 /etc/fcron/fcron.{conf,allow,deny}
exec /usr/sbin/fcron --foreground
