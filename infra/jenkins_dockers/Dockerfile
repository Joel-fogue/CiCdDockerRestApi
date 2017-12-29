FROM jenkins/jenkins:lts
MAINTAINER Joel Fogue <joel.fogue@quickpivot.com>

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
RUN mkdir -p /var/jenkins_home
RUN chown -R 1000:1000 /var/jenkins_home
