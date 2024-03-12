# other config
ENV_FILE=~/.zshrc_env
CUSTOM_FILE=~/.zshrc_custom
if [ -f ${ENV_FILE} ]; then
  source ${ENV_FILE}
fi
if [ -f ${CUSTOM_FILE} ]; then
  source ${CUSTOM_FILE}
fi

# zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="crunch"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  autojump
  macos
  git-open
)
source $ZSH/oh-my-zsh.sh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# language config
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# local proxy config
proxy() {
  export http_proxy="http://127.0.0.1:1086"
  export https_proxy="http://127.0.0.1:1086"
  export all_proxy="socks5://127.0.0.1:1086"
  echo "HTTP PROXY ON"
}
noproxy() {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "HTTP PROXY OFF"
}

# golang config
export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$GOPATH/bin:$PATH"
export GOPROXY=goproxy.cn,direct
export GO111MODULE=on
export GOSUMDB="sum.golang.google.cn"

# homebrew config
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_NO_INSTALL_FROM_API=1

# kubectl suggestion
source <(kubectl completion zsh)
source <(helm completion zsh)

# custom alias
alias kc=kubectl
alias emacs='emacs -nw'

# gpg config
export GPG_TTY=$(tty)
