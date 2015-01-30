FROM sameersbn/gitlab-ci-runner:latest

MAINTAINER Maurice Kaag <mkaag@me.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

RUN \
    echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list; \
    apt-get update -qqy; \
    apt-get install -qqy python-software-properties git build-essential; \
    add-apt-repository -qqy ppa:chris-lea/node.js; \
    apt-get update -qqy; \
    apt-get install -qqy nodejs; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g casperjs bower
