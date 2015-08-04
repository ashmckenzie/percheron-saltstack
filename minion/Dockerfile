FROM saltstack_base:1.0.0
MAINTAINER ash@the-rebellion.net

ADD config/minion /etc/salt/minion

RUN mkdir -p /etc/sv/salt-minion
ADD ./services/salt-minion.sh /etc/sv/salt-minion/run
RUN ln -nfs /etc/sv/* /etc/service/
RUN chmod 755 /etc/sv/*/run

VOLUME [ "/var/log" ]

CMD [ "/sbin/runsvdir", "-P", "/etc/service" ]
