# import privite env
source ~/.zshrc_env

# zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="crunch"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  autojump
)
source $ZSH/oh-my-zsh.sh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# local proxy config
proxy(){
  http_proxy="http://127.0.0.1:1086"
  https_proxy="http://127.0.0.1:1086"
  all_proxy="socks5://127.0.0.1:1086"
  echo "PROXY ON"
}
noproxy(){
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "PROXY OFF"
}

# golang config
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GOPROXY=goproxy.cn,direct
export GO111MODULE=on

# mysql client config
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# custom alias
alias vim='nvim'

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# pyenv config
eval "$(pyenv init -)"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
