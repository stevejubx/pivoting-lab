FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server iputils-ping net-tools nginx curl && \
    apt-get clean

RUN mkdir /var/run/sshd

RUN echo 'root:12345678' | chpasswd

RUN sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD service nginx start && /usr/sbin/sshd -D