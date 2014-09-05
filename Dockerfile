FROM debian:wheezy

MAINTAINER Bruno Binet <bruno.binet@helioslite.com>

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  python-pip python-cherrypy3
RUN pip install hooked==0.1dev

ADD hooked.cfg /etc/hooked.cfg

VOLUME ["/config"]

EXPOSE 80

CMD ["hooked", "/config/hooked.cfg"]
