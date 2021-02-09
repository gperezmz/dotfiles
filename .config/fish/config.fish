#!/usr/bin/env fish

# import homebrew for linux
/home/linuxbrew/.linuxbrew/bin/brew shellenv | source

# flux completions
flux completion fish | source

# greeting
set -U fish_greeting ""

# fish
abbr -a unset 'set --erase'

# bat
abbr -a cat bat
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

# dog
abbr -a dig dog

# exa
alias -s exa "exa --group-directories-first"
abbr -a l exa -la
abbr -a ls exa
abbr -a la exa -a
abbr -a ll exa -l
abbr -a lt exa -laT

# fd
abbr find fd

# ripgrep
abbr -a grep rg

# dotfiles
alias -s dotfiles "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"