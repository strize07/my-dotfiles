if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias inv='nvim $(fzf -m --preview="bat --color=always {}")'

fastfetch
