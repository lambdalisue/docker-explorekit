FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  dnsutils \
  iputils-ping \
  jq \
  neovim \
  net-tools \
  netcat \
  nmap \
  openssh-client \
  postgresql-client \
  tcpdump \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
