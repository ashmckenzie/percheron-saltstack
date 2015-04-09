FROM saltstack_base:1.0.0
MAINTAINER ash@the-rebellion.net

ADD config/minion /etc/salt/minion
ADD config/master /etc/salt/master

RUN mkdir -p /srv/salt

# Services
#
RUN mkdir -p /etc/service/salt-minion /etc/service/salt-master
ADD ./services/salt-minion.sh /etc/service/salt-minion/run
ADD ./services/salt-master.sh /etc/service/salt-master/run
RUN chmod 755 /etc/service/*/run

# Cleanup
#
RUN apt-get clean

CMD [ "/sbin/my_init" ]
