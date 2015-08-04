FROM saltstack_base:1.0.0
MAINTAINER ash@the-rebellion.net

ADD config/master /etc/salt/master

RUN mkdir -p /etc/sv/salt-master /etc/sv/salt-api /var/log/salt
ADD ./services/salt-api.sh /etc/sv/salt-api/run
ADD ./services/salt-master.sh /etc/sv/salt-master/run
RUN ln -nfs /etc/sv/* /etc/service/
RUN chmod 755 /etc/sv/*/run

RUN adduser salt -D && echo 'salt:s4lt3dc4r4m3l' | chpasswd

EXPOSE 4505 4506 8000

VOLUME [ "/var/log", "/var/cache", "/data" ]

CMD [ "/sbin/runsvdir", "-P", "/etc/service" ]
