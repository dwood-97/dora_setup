# Detect the operating system
OS := $(shell uname -s)

setup:
ifeq ($(OS),Linux)
	# Debian/Ubuntu
	@if [ -f /etc/debian_version ]; then \
		sudo dpkg --configure -a; \
		sudo apt update; \
		sudo apt install -y python3 python3-pip ca-certificates curl gnupg; \
		sudo pip3 install ansible; \
		sudo ansible-playbook -i inventory.ini install_dependencies.yml; \
	# Red Hat/CentOS/Fedora
	elif [ -f /etc/redhat-release ]; then \
		sudo yum install -y python3 python3-pip ca-certificates curl gnupg; \
		sudo pip3 install ansible; \
		sudo ansible-playbook -i inventory.ini install_dependencies.yml; \
	# Arch Linux
	elif [ -f /etc/arch-release ]; then \
		sudo pacman -Sy --noconfirm python python-pip ca-certificates curl gnupg; \
		sudo pip install ansible; \
		sudo ansible-playbook -i inventory.ini install_dependencies.yml; \
	# Amazon Linux
	elif [ -f /etc/system-release ]; then \
		sudo yum install -y python3 python3-pip ca-certificates curl gnupg; \
		sudo pip3 install ansible; \
		sudo ansible-playbook -i inventory.ini install_dependencies.yml; \
	else \
		echo "Unsupported operating system"; \
	fi;
endif

.PHONY: setup
