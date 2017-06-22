FROM ubuntu:latest

ENV HOSTNAME apache

RUN apt-get update && apt-get install -y \
	apt-utils \
    git \
    libxml2-dev \
    python \
    build-essential \
    make \
    gcc \
    python-dev \
	python-pip \
	ansible \
    locales  

RUN pip install --upgrade pip 

RUN git clone https://github.com/geopolitis/example-dataf /tmp

RUN ansible-playbook /tmp/apache.yml
EXPOSE 80


