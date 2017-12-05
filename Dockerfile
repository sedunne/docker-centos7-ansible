FROM geerlingguy/docker-centos7-ansible:latest
LABEL maintainer="Stephen Dunne"
ENV container=docker

# Install Ansible and other requirements.
RUN yum makecache fast \
 && yum -y install python-pip \
 && pip install ansible-lint \
 && yum clean all

