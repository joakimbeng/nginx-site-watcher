FROM dockerfile/nginx

ADD run.sh /run.sh
ADD watcher.sh /watcher.sh

RUN chmod +x /run.sh
RUN chmod +x /watcher.sh

CMD /run.sh
