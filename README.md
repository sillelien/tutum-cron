# tutum-cron
A Cron scheduler for Tutum

This scheduler uses [fcron](http://fcron.free.fr/doc/en/fcrontab.5.html) to schedule commands, fcron is great because like anacron it catches up with running services it misses while down. So it's totally okay to change the config and restart the server. 

To use you need to add a link to each service you wish to schedule and then an environment variable that starts with the capitalized name of the service and which ends in _CRON_SCHEDULE, e.g.:

```yaml
  environment:
    TEST_CRON_SCHEDULE: '*/5 * * * *'
  links:
    - test

```

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)
        
[![](https://badge.imagelayers.io/vizzbuzz/tutum-cron)](https://imagelayers.io/?images=vizzbuzz/tutum-cron:latest 'Get your own badge on imagelayers.io')        
