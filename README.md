pkgs need:
```
git lazygit neovim starship zoxide atuin fish nushell yazi tmux fzf fastfetch stow
```
Also clone tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
clone the repo
```
git clone https://github.com/strize07/my-dotfiles.git
```
remove the tmux plugin folder for a fresh install
```
rm -rf my-dotfiles/.config/tmux/plugins/
```

After installing all the pkgs run this following commannd inside the dotfiles dir:
```
stow --adopt .
```
