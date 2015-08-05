FROM gliderlabs/alpine
MAINTAINER ash@the-rebellion.net

RUN mkdir -p /etc/salt /data/salt /var/cache/salt
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update
RUN apk add python python-dev py-pip build-base swig openssl-dev libffi-dev linux-pam-dev runit@testing
RUN pip install --upgrade pip && pip install dateutils zmq pycrypto PyOpenSSL cherrypy libnacl salt=={{ userdata.salt_version }}
