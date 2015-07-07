#!/usr/bin/env bash
set -x

env_vars=$(env | grep ".*_TUTUM_API_URL=" | cut -d= -f1 | tr '\n' ' ')
for env_var in $env_vars
do
  echo "*/5 * * * * curl -X POST -H \"Authorization: $TUTUM_AUTH\" -H \"Accept: application/json\" ${!env_var}/start/ &> /dev/stdout" > /tmp/cron.tmp
done

echo "Installing new crontab"
cat /tmp/cron.tmp

crontab /tmp/cron.tmp
sleep 180
  
 
