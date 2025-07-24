.PHONY: all install brew link

all: install

install: brew link

brew:
	@echo "🍺 Installing Homebrew tools..."
	./brew.sh

link:
	@echo "🔗 Linking dotfiles with stow..."
	stow fish
	stow starship
	stow git
