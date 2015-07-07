FROM vizzbuzz/base-alpine
RUN apk update && apk upgrade && \
    apk-install curl apk-cron bash

COPY *.sh /
RUN chmod 755 /run.sh
COPY cron.sh /etc/services.d/cron/run
RUN chmod 755 /etc/services.d/cron/run
CMD /run.sh

