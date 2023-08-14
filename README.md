# Ansible Fresh Server Setup

This repository contains Ansible playbooks and a Makefile to set up a fresh Linux server. It covers installing essential software, configuring the server environment, and installing specific packages.

## Usage

1. Clone this repository to your local machine:

```bash
git clone https://github.com/dwood-97/dora_setup
cd ansible_fresh_server
```

Modify the inventory.ini file with your target server's IP address and SSH username.

Run the following command to install dependencies on your local machine:

```bash
make install_deps
```

Run the playbook to set up the server environment:

```bash

ansible-playbook -i inventory.ini setup_server.yml
```

Run the playbook to install software on the server:

```bash

ansible-playbook -i inventory.ini install_dependencies.yml
```

Enjoy your fresh server setup!
