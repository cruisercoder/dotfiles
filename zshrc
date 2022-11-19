
# set vi mode bindings

export VISUAL=vim
autoload edit-command-line; zle -N edit-command-line
bindkey -v
bindkey -M vicmd v edit-command-line

# source environment variables from .env
[[ -f ~/.env ]] && source ~/.env

