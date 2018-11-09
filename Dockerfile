FROM testcafe/testcafe
MAINTAINER Armando Dollia
LABEL version="0.1"
LABEL description="Running TestCafe from git repo"
USER root
RUN apk update
RUN apk upgrade
RUN apk add -y git
RUN mkdir /usr/tests \
    && cd /usr/tests \
    && git clone https://github.com/armandodollia/TestCafeTest.git
WORKDIR /usr/tests