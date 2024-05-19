export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="cdev"
# ZSH_THEME="gndx-zsh-theme/gndx"
plugins=(zsh-syntax-highlighting zsh-autosuggestions nvm)

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/shell/init.sh

export DEFAULT_URL="ripley.jfrog.io/artifactory/api/go/go-local"
export DEFAULT_AUTH="cbellop:APd2bgR8UaiE8poe3ZRzbvfRDc"

# export GOPROXY="https://cbellop:Cbellop1@ripley.jfrog.io/artifactory/api/go/go-local,https://proxy.golang.org,direct"
# export GOPROXY="https://cmVmdGtuOjAxOjE3NDEwOTc4MTE6MG1Yc3FLNTdwa1Y1UExwOUlDTk9oQnloNWlq@ripley.jfrog.io/artifactory/api/go/go-local,https://proxy.golang.org,direct"
export GOPROXY="https://$DEFAULT_AUTH@$DEFAULT_URL,direct"
export GONOSUMDB=volt.pkg/*
export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh

export DENO_INSTALL="/home/camilo/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export GOPATH_PACK="$HOME/go/bin"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH_PACK:$PATH"

source $HOME/.dotfiles/shell/zsh/key-bindings.zsh

# pnpm
export PNPM_HOME="/home/camilo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end