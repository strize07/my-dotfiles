if status is-interactive
    # Commands to run in interactive sessions can go here
end


alias tree='tree --charset utf-8'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias fzf='fzf -m --preview="bat --color=always {}"'
alias y='yazi'
alias nv='nvim'
alias gc='git clone'

#to make ls in nu shell
function ls
    set -l cmd ls # Start building the Nu command with 'ls'
    for arg in $argv
        # Escape double quotes in the argument and wrap each in quotes
        set -l escaped_arg (string replace -a '"' '\\"' -- $arg)
        set cmd $cmd \"$escaped_arg\"
    end
    # Execute the constructed command in Nu
    nu -c "$cmd"
end

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
set -gx PATH ~/.npm-global/bin $PATH
# Start tmux
tmux
# Delay fastfetch by 2 seconds
sleep 1 && fastfetch
