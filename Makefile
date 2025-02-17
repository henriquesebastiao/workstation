SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

format:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	cat ~/.aliases > .aliases
	cat ~/.zshrc > .zshrc
	cat ~/.config/spaceship.zsh > home/.config/spaceship.zsh
	cat ~/.config/pypoetry/config.toml > home/.config/pypoetry/config.toml
	cat ~/.config/VSCodium/User/settings.json > home/.config/VSCodium/User/settings.json
	codium --list-extensions > codium-extensions.txt
	yay -Qet > yay-qet.txt
	yay -Qe > yay-qe.txt
	yay -Q > yay-q.txt

.PHONY: format
.PHONY: update