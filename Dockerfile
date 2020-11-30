FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        iputils-ping \
        net-tools \
        dnsutils \
        netcat \
        nmap \
        tcpdump \
        curl \
        httpie \
        postgresql-client \
        vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
