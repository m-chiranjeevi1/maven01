FROM ubuntu
MAINTAINER chiranjeevi
ENV test_home=/chiru
WORKDIR $test_home
COPY webapp/src .
ADD webapp/pom.xml .
RUN apt-get -y update && \
    apt-get install git maven openjdk-21-jdk
RUN mkdir -p doc/imp && \
    echo "hello,working fine!" >> doc/imp/check.txt
VOLUME ["/test/prac"]
RUN echo "hello, good morning!" >> /test/prac/test01.txt

    
