FROM phusion/baseimage:latest
MAINTAINER ash@the-rebellion.net

ENV HOME /root
ENV TERM ansi
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

# Setup
#
RUN apt-get update
RUN apt-get -y install curl python-dateutil python-requests

RUN mkdir -p /var/cache/salt-git /etc/salt

WORKDIR /var/cache/salt-git
RUN curl -Lsq https://bootstrap.saltstack.com | bash -s -- -D -M -X -c /var/cache/salt-git -K -A master1 git v2015.5.0 || true

# Cleanup
#
RUN apt-get clean
