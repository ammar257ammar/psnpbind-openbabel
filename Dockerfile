# ubuntu 18 tags docker: 18.04, bionic-20191029, bionic, latest
FROM        ubuntu:bionic-20191029
MAINTAINER  ammar257ammar@gmail.com

USER root

WORKDIR /openbabel

RUN apt-get update && apt-get install -y \
    wget \
    ca-certificates \
    build-essential \
    curl \
    openbabel=2.3.2+dfsg-3build1

WORKDIR /command
COPY openbabel.sh ./
COPY search-and-split.sh ./
COPY minimize.sh ./

RUN chmod 755 openbabel.sh
RUN chmod 755 search-and-split.sh
RUN chmod 755 minimize.sh


ENTRYPOINT ["/command/openbabel.sh"]




