FROM nginx

ADD run.sh /run.sh
ADD watcher.sh /watcher.sh

RUN chmod +x /run.sh && chmod +x /watcher.sh

CMD /run.sh
