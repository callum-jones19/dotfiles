# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User-specific sources
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Package manager sources
[[ -d $HOME/.cargo ]] && . "$HOME/.cargo/env"


# fnm
FNM_PATH="/home/callumjones/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

[ -f "/home/callum/.ghcup/env" ] && . "/home/callum/.ghcup/env" # ghcup-env
