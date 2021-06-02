#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# pyenv and pyenv-virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PATH="$/HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

export PATH="$HOME/.poetry/bin:$PATH"
