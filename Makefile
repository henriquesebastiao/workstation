SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

lint:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	cat ~/.aliases > .aliases
	cat ~/.zshrc > .zshrc
	cat ~/.config/spaceship.zsh > .config/spaceship.zsh
	cat ~/.config/pypoetry/config.toml > .config/pypoetry/config.toml

.PHONY: lint
.PHONY: update