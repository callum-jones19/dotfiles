# Setup PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$PATH:$HOME/.local/bin:$HOME/bin"
fi

export PATH="$PATH:$HOME/scripts"

export EDITOR="nvim"
export VISUAl="nvim"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# Bash prompt
# GREEN="\[$(tput setaf 2)\]"
# RESET="\[$(tput sgr0)\]"
# export PS1="${GREEN}my prompt${RESET}> "

