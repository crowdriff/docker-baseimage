# Version 1.1

FROM phusion/baseimage:0.9.15

MAINTAINER Abhinav Ajgaonkar <abhi@crowdriff.com>

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get update; apt-get upgrade -y -qq; \
    apt-get install -y -qq wget; \
    rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]
