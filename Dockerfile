FROM ubuntu:14.04
MAINTAINER Francois Gaudin <francois@presencelearning.com>

RUN apt-get update

RUN \
  apt-get install -y wget

RUN \
  wget https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_linux_amd64.tar.gz -O consul_template.tar.gz && \
  mkdir -p /opt/consul_template && tar xzf consul_template.tar.gz -C /opt/consul_template --strip-components=1 && \
  rm consul_template.tar.gz && mkdir /opt/consul_template/conf.d

VOLUME ['/opt/consul_template/conf.d']