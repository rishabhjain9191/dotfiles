DOTFILES_DIR := ~/dotfiles
cask-apps: brew
	brew bundle --file=$(DOTFILES_DIR)/Brewfile || true
