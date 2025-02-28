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
	yay -Qe > yay-qe.txt
	yay -Q > yay-q.txt
	gnome-extensions list > gnome-extensions.txt
	cat ~/.mozilla/firefox/*.default-release/bookmarks.html > .mozilla/firefox/z0gjscpl.default-release/bookmarks.html
	python scripts/firefox-settings.py

diff:
	python scripts/diff-packages.py

old:
	cat yay-qet.txt > yay-qet-old.txt

.PHONY: format
.PHONY: update
.PHONY: diff
.PHONY: old