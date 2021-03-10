export PYENV_ROOT="$HOME/.pyenv"
export PATH="/Library/Frameworks/R.framework/Resources:$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

