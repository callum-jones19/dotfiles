#
# Program evals
# 

if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
fi
if command -v fnm >/dev/null 2>&1; then
    eval "$(fnm env --use-on-cd --shell bash)"
fi
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init - bash)"
fi

