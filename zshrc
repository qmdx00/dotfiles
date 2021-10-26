# ========== Meta ==========
ENV_FILE=~/.zshrc_env
CUSTOM_FILE=~/.zshrc_custom
if [ -f ${ENV_FILE} ]; then
  source ${ENV_FILE}
fi
if [ -f ${CUSTOM_FILE} ]; then
  source ${CUSTOM_FILE}
fi

# ========== oh-my-zsh ==========
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="crunch"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  autojump
  macos
)
source $ZSH/oh-my-zsh.sh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# ========== Locale ==========
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ========== Proxy ==========
PROXY_PORT=1086
PROXY_HOST=127.0.0.1

proxy() {
  export http_proxy="http://${PROXY_HOST}:${PROXY_PORT}"
  export https_proxy="http://${PROXY_HOST}:${PROXY_PORT}"
  export all_proxy="socks5://${PROXY_HOST}:${PROXY_PORT}"
  echo "HTTP PROXY ON"
}
noproxy() {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "HTTP PROXY OFF"
}

# ========== Go ==========
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export GOPROXY=goproxy.cn,direct
export GO111MODULE=on
export GOSUMDB="sum.golang.google.cn"

# ========== Homebrew ==========
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_NO_INSTALL_FROM_API=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# ========== Completions ==========
source <(kubectl completion zsh)
source <(helm completion zsh)
