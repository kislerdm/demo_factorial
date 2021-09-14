SHELL := /bin/bash

help: ## Prints help message.
	@ grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1m%-30s\033[0m %s\n", $$1, $$2}'

run-python: ## Runs the python app. python3 is required.
	@ python3 ./py/main.py

run-ruby: ## Runs the ruby app. ruby 2.6+ is required.
	@ ruby ./ruby/main.rb

run-js: ## Runs the javascript app. node 7+ is required.
	@ node ./js/main.js

run-cpp: ## Runs the c++ app. g++ compiler is required.
	@ echo 'compiles the app'
	@ g++ -o ./run_cpp ./cpp/main.cpp
	@ echo 'runs the app'
	@ ./run_cpp

run-go: ## Runs the go app. go is required.
	@ echo 'compiles the app'
	@ go build -o ./run_go ./go/main.go
	@ echo 'runs the app'
	@ ./run_go

.DEFAULT_GOAL := help
