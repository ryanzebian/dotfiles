SHELL := bash
config := /usr/bin/git --git-dir=${HOME}/.myconf/ --work-tree=${HOME}

.PHONY: all
all: brew brewapps ## Installs all deps
	bash setupDock.sh
	bash misc.sh
.PHONY: brew
brew: ## Install homebrew
	@if [ ! -f /usr/local/bin/brew ]; then \
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash; \
	else \
		echo 'skipped, brew already detected'; \
	fi;

.PHONY: brewapps
brewapps: ## Installs brew bundle
	brew bundle --file Brewfile --verbose
	defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false 

.PHONY: save
save: ## save brew bundle
	brew bundle dump --file Brewfile --force
	$(config) add Brewfile
	$(config) commit -m 'add package'
	$(config) push origin master

.PHONY: diff
diff: ## show local changes     
	brew bundle dump --file Brewfile --force
	$(config) diff HEAD Brewfile


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'



