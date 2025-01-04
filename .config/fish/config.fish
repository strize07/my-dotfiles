if status is-interactive
    # Commands to run in interactive sessions can go here
end


alias tree='tree --charset utf-8'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias fzf='fzf -m --preview="bat --color=always {}"'

#Command to show most used Commands
function topcmds
    set_color green
    echo "Top 10 Most Used Commands:"
    set_color normal
    history | awk '{print $1}' | sort | uniq -c | sort -nr | head -10 | while read -l count cmd
        set_color cyan
        printf "%-4s" $count
        set_color yellow
        echo $cmd
        set_color normal
    end
end

# disable ctrl i tab Commands
function fish_user_key_bindings
    bind \ci ''
end


export EDITOR=nvim
export VISUAL=nvim

starship init fish | source
atuin init --disable-up-arrow fish | source
zoxide init --cmd cd fish | source

tmux
fastfetch
