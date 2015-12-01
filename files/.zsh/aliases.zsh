# Display detailed info about cd directory stack.
alias dirs="dirs -v"

alias v="vim"
alias x="exit"
alias psg="ps aux | grep"
alias t="vim ~/.todo"

# Make cd follow symlinks by default.
alias cd="cd -P"

# Aliases for ls.
alias ls="ls -G"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# Easily navigate to parent directories.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Easily switch back to previous directories.
alias -- -="cd +1 >/dev/null 2>&1"
alias -- --="cd +2 >/dev/null 2>&1"
alias -- ---="cd +3 >/dev/null 2>&1"

# Git aliases.
alias gst="git status"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gp="git pull"
alias gch="git checkout"
