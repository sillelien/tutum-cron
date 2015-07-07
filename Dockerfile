FROM vizzbuzz/base-alpine
RUN apk update && apk upgrade && \
    apk-install curl apk-cron bash

COPY run.sh /run.sh
RUN chmod 755 /run.sh
CMD /run.sh

