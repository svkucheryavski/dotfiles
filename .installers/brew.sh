#!/bin/sh

brew update

# Main tools
brew install mc
brew install vim

# R and python
brew install r
brew install librsvg
brew install openssl readline sqlite3 xz zlib
brew install pandoc
brew install pyenv

# Web development
brew install node
brew install httpie

# other software
brew install --cask rstudio
brew install --cask ticktick
brew install --cask figma
brew install --cask appcleaner
brew install --cask mendeley-reference-manager
brew install --cask google-chrome
brew install --cask docker

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# remove outdated stuff
bew cleanup