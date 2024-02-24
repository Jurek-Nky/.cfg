.DEFAULT_GOAL := build

STOW = $(shell command -v stow 2> /dev/null)

check_stow:
ifndef STOW
	$(error No 'stow' in $$PATH, consider installing GNU stow from https://github.com/aspiers/stow)
endif

build: check_stow
	@echo "~>> [[ DOTFILES ]] <<~"
	@echo
	@bash -c ./scripts/install_dotfiles

rebuild: clear build
	
clear: check_stow
	@bash -c ./scripts/unlink
