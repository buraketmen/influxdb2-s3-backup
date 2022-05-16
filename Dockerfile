FROM influxdb:2.2.0

RUN apt update -y && apt install awscli cron -y

COPY backup.sh /usr/bin/backup.sh
RUN chmod u+x /usr/bin/backup.sh
ENTRYPOINT ["/usr/bin/backup.sh"]
CMD ["startcron"]