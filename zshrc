export ZSH="/home/dlong/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vimzsh="nvim ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias vim="nvim"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT"  ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

LS_COLORS=$LS_COLORS:'ow=01;34:';
export LS_COLORS

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source /home/dlong/.rvm/scripts/rvm
