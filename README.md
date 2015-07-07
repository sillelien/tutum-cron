# tutum-cron
A Cron scheduler for Tutum

This scheduler uses [fcron](http://fcron.free.fr/doc/en/fcrontab.5.html) to schedule commands. 

To use you need to add a link to each service you wish scheduling and then an environment variable that starts with the capitalized name of the service and which ends in _CRON_SCHEDULE, e.g.:

```yaml
  environment:
    - TEST_CRON_SCHEDULE="*/5 * * * *"
  links:
    - test

```

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)
        
[![](https://badge.imagelayers.io/vizzbuzz/tutum-cron)](https://imagelayers.io/?images=vizzbuzz/tutum-cron:latest 'Get your own badge on imagelayers.io')        
