#!/usr/bin/env bash
echo "root" > /etc/fcron/fcron.allow
#chmod 644 /etc/fcron/
chmod 644 /etc/fcron/fcron.conf /etc/fcron/fcron.allow /etc/fcron/fcron.deny
[ ! -f /run/fcron.pid ] || rm /run/fcron.pid
exec /usr/sbin/fcron --foreground
