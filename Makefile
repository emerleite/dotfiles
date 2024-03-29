.DEFAULT_GOAL = copy
.PHONY: copy

OS := $(shell uname)

all: config install copy copy-fonts

config:
ifeq ($(OS), Darwin)
	@./bin/osx-config
endif

install:
ifeq ($(OS), Darwin)
	@./bin/osx-install
else
	@./bin/linux-install
endif
	@./bin/vscode-install

copy:
	@./bin/copy-home

copy-fonts:
ifeq ($(OS), Darwin)
	@./bin/osx-copy-fonts
endif

gnome-shell-reload: copy
	killall -SIGQUIT gnome-shell

gnome-shell-log:
	journalctl /usr/bin/gnome-shell -f
