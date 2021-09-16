SHELL := /bin/bash

LANG := cpp

help: ## Prints help message.
	@ grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1m%-30s\033[0m %s\n", $$1, $$2}'

run-script: ## Runs the "single-script" app in a specified language defined by the var. LANG.
	@ cd ./$(LANG)/script \
		&& docker build --platform linux/amd64 -t factorial-$(LANG)-script:1.0 . \
		&& docker run -it factorial-$(LANG)-script:1.0

run-pkg: ## Runs the "packaged" app in a specified language defined by the var. LANG.
	@ cd ./$(LANG)/pkg \
		&& docker build --platform linux/amd64 -t factorial-$(LANG)-pkg:1.0 . \
		&& docker run -it factorial-$(LANG)-pkg:1.0

.DEFAULT_GOAL := help
