SHELL := /bin/bash

LANG := cpp

help: ## Prints help message.
	@ grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Runs the app in a specified language defined by the var. LANG.
	@ cd ./$(LANG) \
		&& docker build --platform linux/amd64 -t factorial-$(LANG):1.0 . \
		&& docker run -it factorial-$(LANG):1.0

.DEFAULT_GOAL := help
