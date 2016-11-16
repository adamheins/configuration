#!/bin/sh

# Get rid of what's already there.
[ -f ~/.gitconfig ] && rm ~/.gitconfig

# Generate the global git config file.
git config --global push.default "simple"
git config --global user.name "Adam Heins"
git config --global core.excludesfile $HOME/.gitignore
git config --global diff.tool "vimdiff"
git config --global difftool.prompt "false"