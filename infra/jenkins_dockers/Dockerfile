FROM jenkins/jenkins:lts
MAINTAINER Joel Fogue <joel.fogue@quickpivot.com>

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

USER root
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev \
      && apt-get install apt-utils -y \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
