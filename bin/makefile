SHELL := bash

.PHONY: all
all: brew brewapps ## Installs all deps

.PHONY: brew
brew: ## Install homebrew
	@if [ ! -f /usr/local/bin/brew ]; then \
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash; \
	else \
		echo 'skipped, brew already detected'; \
	fi;

.PHONY: brewapps
brewapps: ## Installs brew bundle
	brew bundle --file Brewfile
	defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false 

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'



