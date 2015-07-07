# A Cron Scheduler for Tutum

##Intro


This scheduler uses [fcron](http://fcron.free.fr/doc/en/fcrontab.5.html) to schedule commands, fcron is great because like anacron it catches up with running services it misses while down. So it's totally okay to change the config and restart the server. 

To use you need to add a link to each service you wish to schedule and then an environment variable that starts with the capitalized name of the service and which ends in _CRON_SCHEDULE, e.g.:

```yaml
  environment:
    TEST_CRON_SCHEDULE: '*/5 * * * *'
  links:
    - test

```

You'll also want to make sure you add the `global` role on tutum-cron:

```yaml
  roles:
    - global
```

Everything you really need to know is in the `tutum.yml` file, just take a look and you'll get the idea. So just press the button and get going:

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

    
##Schedules 
   
Everything you need to know about scheduling can be found in the [fcrontab documentation](http://fcron.free.fr/doc/en/fcrontab.5.html) but simply you can use the cron syntax you are familiar with:

<pre><b>* * * * * *</b>
| | | | | | 
| | | | | +-- Year              (range: 1900-3000)
| | | | +---- Day of the Week   (range: 1-7, 1 standing for Monday)
| | | +------ Month of the Year (range: 1-12)
| | +-------- Day of the Month  (range: 1-31)
| +---------- Hour              (range: 0-23)
+------------ Minute            (range: 0-59)</pre>

You can of course use an online generator such as http://crontab-generator.org/ to help you along.

##Further Info

The base container uses work originally taken from https://github.com/just-containers/base-alpine credit to <John Regan>john@jrjrtech.com this provides us with the S6 supervisor which this image uses to run cron, dnsmasq and the main run.sh script.

The real base of this image though is [Alpine Linux](https://www.alpinelinux.org/) brought to Docker via [Glider Labs](http://gliderlabs.com/).
        
[![](https://badge.imagelayers.io/vizzbuzz/tutum-cron.svg)](https://imagelayers.io/?images=vizzbuzz/tutum-cron:latest 'Get your own badge on imagelayers.io')        
