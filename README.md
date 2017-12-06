# Docker CentOS 7 Ansible Image

This is an (unprivileged) systemd image based on CentOS 7, designed for testing and developing Ansible roles and playbooks.

## Usage

A few special runtime flags are needed to get this working properly:

```docker run -d --tmpfs /tmp --tmpfs /run --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --security-opt seccomp=unconfined sedunne/docker-centos7-ansible```

Your host system needs to be running systemd, and you'll likely need to be using a newer version of docker as well.

