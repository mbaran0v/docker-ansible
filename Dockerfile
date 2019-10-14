FROM python:3.7.4-slim-stretch

RUN apt-get update && apt-get -y install \
        ca-certificates \
        git \
        curl \
        zip \
        rsync \
        sshpass && \
    rm -rf /var/lib/apt/lists/*

RUN pip install jmespath passlib

ARG ANSIBLE_VERSION=2.7.13
RUN pip install ansible==${ANSIBLE_VERSION}
