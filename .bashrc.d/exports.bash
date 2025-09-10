# Setup PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
if [[ -d /home/linuxbrew ]]; then
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

export PATH

export EDITOR="hx"
export VISUAl="hx"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

