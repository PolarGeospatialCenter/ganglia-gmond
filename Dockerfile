FROM debian:stretch-slim

ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/bin/confd
RUN chmod +x /usr/bin/confd
RUN apt-get update && \
  apt-get install -y ganglia-monitor && \
  rm -rf /var/lib/apt/lists/*

COPY confd /etc/confd/
COPY bin /usr/local/bin

CMD /usr/local/bin/start.sh
