SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

lint:
	shfmt -l -w $(SHELL_SCRIPTS)

.PHONY: lint