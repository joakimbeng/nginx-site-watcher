FROM nginx

ADD run.sh /
ADD watcher.sh /

WORKDIR /

RUN chmod +x run.sh watcher.sh

CMD ./run.sh
