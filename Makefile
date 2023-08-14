install_deps:
	sudo apt update
	sudo apt install -y python3 python3-pip
	pip3 install ansible

run_setup:
	ansible-playbook -i inventory.ini install_software.yml

run_install:
	ansible-playbook -i inventory.ini install_dependencies.yml

.PHONY: install_deps run_setup run_install
