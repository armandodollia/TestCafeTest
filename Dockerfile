FROM testcafe/testcafe
MAINTAINER Armando Dollia
LABEL version="0.1"
LABEL description="Running TestCafe from git repo"
RUN apt-get clean \
    && apt-get update \
    && apt-get install -y git
RUN mkdir /usr/tests \
    && cd /usr/tests \
    && git clone https://github.com/armandodollia/TestCafeTest.git
WORKDIR /usr/tests