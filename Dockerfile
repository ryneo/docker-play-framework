FROM debian:7.8
MAINTAINER Ryne Okimoto <rmokimoto@gmail.com>
ENV JAVA_HOME /opt/jdk1.8.0_45
RUN apt-get update \
  && apt-get -y install wget unzip \
  && wget --no-check-certificate --no-cookies \
  --header "Cookie: oraclelicense=accept-securebackup-cookie" \
   http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz \
  && tar zxvf jdk-8u45-linux-x64.tar.gz \
  && mv jdk1.8.0_45 /opt \
  && ln -s /opt/jdk1.8.0_45/bin/java /bin/java \
  && ln -s /opt/jdk1.8.0_45/bin/javac /bin/javac \
  && ln -s /opt/jdk1.8.0_45/bin/jar /bin/jar \
  && rm jdk-8u45-linux-x64.tar.gz
