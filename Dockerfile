FROM ubuntu:18.04
ARG repo
MAINTAINER Armando Dollia
LABEL version="0.1"
LABEL description="Running TestCafe from git repo"
USER root
RUN apt-get clean
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git
# Install firefox and chrome
RUN apt-get install -y firefox
RUN apt-get install -y chromium-browser
# Install nodejs and npm
RUN apt-get install -y nodejs
RUN apt-get install -y npm
# Install TestCafe
RUN npm install -g testcafe
# Install x11vnc.
#RUN apt-get install -y x11vnc
# Install xvfb.
RUN apt-get install -y xvfb
# Install fluxbox.
RUN apt-get install -y fluxbox
# Install wget.
RUN apt-get install -y wget
# Install wmctrl.
RUN apt-get install -y wmctrl
# Run bootstrap script
RUN mkdir /usr/tests && cd /usr/tests && mkdir reports && cd /reports && mkdir screenshots && git clone $repo
COPY /bootstrap.sh /
CMD '/bootstrap.sh'
#WORKDIR /usr/tests/TestCafeTest
#RUN cd /usr/tests \
#    && testcafe firefox TestCafeTest