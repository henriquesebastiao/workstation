SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

format:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	cat ~/.aliases > .aliases
	cat ~/.zshrc > .zshrc
	cat ~/.config/spaceship.zsh > home/.config/spaceship.zsh
	cat ~/.config/pypoetry/config.toml > home/.config/pypoetry/config.toml
	cat ~/.config/Code/User/settings.json > home/.config/Code/User/settings.json
	code --list-extensions > vscode-extensions.txt

.PHONY: format
.PHONY: update