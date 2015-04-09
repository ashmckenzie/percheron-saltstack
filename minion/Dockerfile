FROM saltstack_base:1.0.0
MAINTAINER ash@the-rebellion.net

ADD config/minion /etc/salt/minion

# Services
#
RUN mkdir -p /etc/service/salt-minion
ADD ./services/salt-minion.sh /etc/service/salt-minion/run
RUN chmod 755 /etc/service/*/run

# Cleanup
#
RUN apt-get clean

CMD [ "/sbin/my_init" ]
