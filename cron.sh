#!/usr/bin/env bash
cd /etc/rc
echo "root" > /etc/fcron/fcron.allow
chmod 644 /etc/fcron/
[ ! -f /run/fcron.pid ] || rm /run/fcron.pid
chmod 644 /etc/fcron/fcron.{conf,allow,deny}
exec /usr/sbin/fcron --foreground
