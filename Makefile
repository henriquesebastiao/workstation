SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

format:
	shfmt -l -w $(SHELL_SCRIPTS)

update:
	code --list-extensions > code-extensions.txt
	yay -Qe > yay-qe.txt
	yay -Q > yay-q.txt
	gnome-extensions list > gnome-extensions.txt
	python scripts/firefox-settings.py
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

chmod:
	chmod +x ./bin/*.sh

bin:
	cp bin/**/result/bin/* ~/.local/bin/
	chmod +x ~/.local/bin/*

.PHONY: format update diff old config bin