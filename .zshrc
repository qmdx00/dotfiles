# zsh config
ZSH_THEME="crunch"
HIST_STAMPS="mm/dd/yyyy"

plugins=(
	git
	extract
	colored-man-pages
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8


# local proxy config
proxy(){
  http_proxy="http://127.0.0.1:1087"
  https_proxy="http://127.0.0.1:1087"
  all_proxy="socks5://127.0.0.1:1086"
  echo "HTTP PROXY ON"
}

noproxy(){
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "HTTP PROXY OFF"
}

# golang config
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export GOPROXY=goproxy.cn,direct
export GO111MODULE=on

