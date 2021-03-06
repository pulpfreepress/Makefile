SHELL=bash
CONFIRM=0
MAKEFLAGS+= --no-print-directory
TOOLS=aws node git python3
VERSION=`git describe --tags --always`
.PHONY: build, run-tests, clean
help:
	@grep -h -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
__check-tools:
	@for TOOL in $(TOOLS); do \
  		type $$TOOL &> /dev/null && ([ $(CONFIRM) -eq 1 ] && echo "$$TOOL: OK" || true) || (echo "$$TOOL: MISSING"; exit 1); \
    done
	@aws --version | cut -f 1 -d " " | cut -f 2 -d "/" | grep -q "^2" || (echo "aws: OLD (upgrade to AWS CLI version 2)"; exit 1)
check-tools: ## Check if required tools are installed
	@$(MAKE) __check-tools CONFIRM=1

clean: ## Remove build artifacts

build: ## Build something

run-tests: ## Run some tests


