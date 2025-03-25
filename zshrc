export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="afowler"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  encode64
  extract
  httpie
  pyenv
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi

alias vim="nvim"
alias ls="eza -1 -l --icons"
export GOPATH="$HOME/go"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/go/bin

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/datagrip/bin:$PATH
