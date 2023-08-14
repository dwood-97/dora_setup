setup:
	sudo dpkg --configure -a
	sudo apt update
	sudo apt install -y python3 python3-pip
	pip3 install ansible
	ansible-playbook -i inventory.ini install_dependencies.yml

.PHONY: setup
