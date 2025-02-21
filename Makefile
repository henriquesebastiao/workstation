SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

format:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	cat ~/.aliases > .aliases
	cat ~/.zshrc > .zshrc
	cat ~/.config/spaceship.zsh > .config/spaceship.zsh
	cat ~/.config/pypoetry/config.toml > .config/pypoetry/config.toml
	cat ~/.config/VSCodium/User/settings.json > .config/VSCodium/User/settings.json
	cat ~/.config/flameshot/flameshot.ini > .config/flameshot/flameshot.ini
	codium --list-extensions > codium-extensions.txt
	yay -Qet > yay-qet.txt
	gnome-extensions list > gnome-extensions.txt

diff:
	python diff-packages.py

.PHONY: format
.PHONY: update
.PHONY: diff