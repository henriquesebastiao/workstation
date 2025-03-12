SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

format:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	codium --list-extensions > codium-extensions.txt
	yay -Qet > yay-qet.txt
	yay -Qe > yay-qe.txt
	yay -Q > yay-q.txt
	gnome-extensions list > gnome-extensions.txt
	python scripts/librewolf-settings.py
	python scripts/encode_bookmarks.py
	pipx list --short > pipx.txt
	gem list --local > gem.txt
	./scripts/save-config.sh

diff:
	python scripts/diff-packages.py

old:
	cat yay-qet.txt > yay-qet-old.txt

config:
	./scripts/save-config.sh

.PHONY: format update diff old config