# dotfiles

## :package: Installation
With the [git bare](https://www.atlassian.com/git/tutorials/dotfiles) method
and [git sparse-checkout](https://git-scm.com/docs/git-sparse-checkout) to
ignore certain files.

```fish
git clone --bare git@github.com:gperezmz/dotfiles.git ~/.dotfiles
alias dotfiles "git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
dotfiles config --local status.showUntrackedFiles no
dotfiles sparse-checkout init
dotfiles sparse-checkout set "/*"
dotfiles sparse-checkout add "!/.github/"
dotfiles checkout
```
