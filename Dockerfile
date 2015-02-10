FROM sameersbn/gitlab-ci-runner:latest

MAINTAINER Maurice Kaag <mkaag@me.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes
ENV PHANTOMJS_VERSION 1.9.8

RUN \
    apt-get update -qqy; \
    apt-get install -qqy \
        software-properties-common \
        python-software-properties \
        python \
        libfreetype6 \
        libfontconfig1 \
        g++ \
        make \
        libpq-dev \
        gyp \
        git \
        build-essential && \
    add-apt-repository -y ppa:chris-lea/node.js && \
    apt-get update -qqy; \
    apt-get install -qqy \
        nodejs \
        python \
        python-pygments \
        curl; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 | \
    tar -C /usr/local -xjf - && ln -sf ../phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/local/bin/

RUN git clone git://github.com/n1k0/casperjs.git /usr/local/casperjs && \
    ln -sf ../casperjs/bin/casperjs /usr/local/bin

RUN npm install -g bower sails
