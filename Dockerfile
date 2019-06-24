FROM ubuntu:16.04

RUN apt-get update -qq
RUN apt-get -y install \
  build-essential \
  git \
  python \
  python-apt \
  python-pip \
  vim

RUN pip install --upgrade pip
RUN pip install "ansible>=2.0,<3.0"

WORKDIR /sheepdoge-test

ADD tasks ./tasks
ADD vars ./vars
ADD tests/* ./

CMD ./test.sh
