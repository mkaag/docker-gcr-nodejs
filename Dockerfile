FROM sameersbn/gitlab-ci-runner:latest

MAINTAINER Maurice Kaag <mkaag@me.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

RUN \
    apt-get update -qqy; \
    apt-get install -qqy software-properties-common git build-essential; \
    add-apt-repository -y ppa:chris-lea/node.js; \
    apt-get update -qqy; \
    apt-get install -qqy nodejs; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g casperjs bower
