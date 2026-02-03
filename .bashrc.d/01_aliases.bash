#
# Aliases
# 

if command -v eza >/dev/null 2>&1; then
    alias ls="eza --icons"
    alias l="eza -l --icons --header --group-directories-first"
    alias la="eza -la --icons --header --group-directories-first"
else
    alias l="ls -l"
    alias la="ls -la"
fi
alias gst="git status"
