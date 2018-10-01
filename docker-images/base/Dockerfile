FROM openjdk:8-jre-slim
MAINTAINER bushnevyuri

RUN apt-get clean && \
apt-get update && \
apt-get -qy install \
wget \
telnet \
iputils-ping \
unzip

RUN   mkdir /jmeter \
&& cd /jmeter/ \
&& wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.0.tgz \
&& tar -xzf apache-jmeter-5.0.tgz \
&& rm apache-jmeter-5.0.tgz

COPY jmeter-plugins/jmeter-plugins-senseuploader-3.4.jar /jmeter/apache-jmeter-5.0/lib/ext
COPY jmeter-plugins/json-lib-2.4-jdk15.jar /jmeter/apache-jmeter-5.0/lib/
COPY jmeter-plugins/cmdrunner-2.2.jar /jmeter/apache-jmeter-5.0/lib/
COPY jmeter-plugins/jmeter-plugins-cmn-jmeter-0.4.jar /jmeter/apache-jmeter-5.0/lib/
COPY jmeter-plugins/jmeter-plugins-manager-1.3.jar /jmeter/apache-jmeter-5.0/lib/ext

ENV JMETER_HOME /jmeter/apache-jmeter-5.0/
ENV PATH $JMETER_HOME/bin:$PATH
