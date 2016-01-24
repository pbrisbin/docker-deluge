FROM ubuntu:trusty
MAINTAINER Pat Brisbin <pbrisbin@gmail.com>
RUN apt-get update \
  && apt-get install -y \
    software-properties-common \
  && add-apt-repository ppa:deluge-team/ppa \
  && apt-get update \
  && apt-get install -y \
    deluge-web \
    deluged \
    supervisor \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
EXPOSE 53160
EXPOSE 53160/udp
EXPOSE 8112
EXPOSE 58846
VOLUME ["/data"]
ADD files /
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf", "-n"]
