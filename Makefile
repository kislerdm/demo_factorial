SHELL := /bin/bash

LANG := cpp
LANG_DIRS := $(dir $(wildcard $(PWD)/*/Dockerfile))

help: ## Prints help message.
	@ grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1m%-30s\033[0m %s\n", $$1, $$2}'
	@ echo
	@ echo "List of availble languages, i.e. values of the var. LANG:"
	@ echo $(subst /,,$(subst $(PWD),,$(LANG_DIRS)))

run: ## Runs the app in a specified language defined by the var. LANG.
	@ cd ./$(LANG) \
		&& docker build -t factorial-$(LANG):1.0 . \
		&& docker run -it factorial-$(LANG):1.0

.DEFAULT_GOAL := help
