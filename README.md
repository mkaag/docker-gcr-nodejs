docker-gcr-nodejs
=================

[![Docker Hub](https://img.shields.io/badge/docker-mkaag%2Fgcr--nodejs-008bb8.svg)](https://registry.hub.docker.com/u/mkaag/gcr-nodejs/)

This repository contains the **Dockerfile** to build a [Runner for GitLab CI](https://github.com/gitlabhq/gitlab-ci-runner) with [Node.js](http://nodejs.org) and [CasperJS](http://casperjs.org) pre-loaded.

### Base Docker Image

* [sameersbn/gitlab-ci-runner](https://github.com/sameersbn/docker-gitlab-ci-runner), the base image from Sameer Naik
* An original idea from [Pēteris Ņikiforovs](https://peteris.rocks/blog/docker-gitlab-and-gitlab-ci/)

### Installation

```bash
docker build -t mkaag/gcr-nodejs github.com/mkaag/docker-grc-nodejs
```

### Usage

Same usage as [original setup](https://github.com/sameersbn/docker-gitlab-ci-runner/blob/master/README.md)
