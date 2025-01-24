# config.nu
#
# Installed by:
# version = "0.101.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

alias tree = tree --charset utf-8
alias inv = nvim (fzf -m --preview="bat --color=always {}")
alias fzf = fzf -m --preview="bat --color=always {}"
alias y = yazi
alias nv = nvim
alias gc = git clone

#remove banner
$env.config.show_banner = false

#zoxide
source ~/.zoxide.nu

#atuin
source ~/.local/share/atuin/init.nu

#starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

