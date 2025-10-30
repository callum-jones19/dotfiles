# Setup PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$PATH:$HOME/.local/bin:$HOME/bin"
fi
if [[ -d /home/linuxbrew ]]; then
  export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"

export EDITOR="hx"
export VISUAl="hx"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

