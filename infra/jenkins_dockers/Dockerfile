FROM jenkins/jenkins:lts
MAINTAINER Joel Fogue <joel.fogue@quickpivot.com>

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

USER root

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install libltdl7 libltdl-dev

USER jenkins 
