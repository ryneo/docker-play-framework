FROM java:latest
MAINTAINER Ryne Okimoto <rmokimoto@gmail.com>

ENV ACTIVATOR_VERSION=1.3.5

RUN mkdir /home/activator \
  && cd /tmp \
  && wget http://downloads.typesafe.com/typesafe-activator/${ACTIVATOR_VERSION}/typesafe-activator-${ACTIVATOR_VERSION}.zip \
  && unzip -d /home/activator typesafe-activator-${ACTIVATOR_VERSION}.zip \
  && rm typesafe-activator-${ACTIVATOR_VERSION}.zip \
  && cd /home/dev/activator-dist-${ACTIVATOR_VERSION} \
  && chmod 755 activator activator-launch-${ACTIVATOR_VERSION}.jar

ENV PATH=$PATH:/home/activator/activator-dist-${ACTIVATOR_VERSION}

EXPOSE 9000 8888
