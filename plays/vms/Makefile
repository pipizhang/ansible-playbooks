SHELL := /bin/bash

.PHONY: help
help: ## This help message
	@echo "usage: make [target]"
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m: \2/')"

.PHONY: hosts
hosts: ## List hosts
	exec ansible-playbook ping.yml --list-hosts

.PHONY: ping
ping: ## Ping hosts
	exec ansible-playbook ping.yml

.PHONY: site
site: ## Init site
	exec ansible-playbook site.yml -v
