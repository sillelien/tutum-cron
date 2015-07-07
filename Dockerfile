FROM vizzbuzz/base-alpine
COPY run.sh /run.sh
RUN chmod 755 /run.sh
CMD /run.sh

