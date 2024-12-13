export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# ZSH_THEME="cdev"
# # ZSH_THEME="gndx-zsh-theme/gndx"
# plugins=(zsh-syntax-highlighting zsh-autosuggestions nvm)

# source $ZSH/oh-my-zsh.sh


# export NVM_DIR=~/.nvm
# source $NVM_DIR/nvm.sh

# export DENO_INSTALL="/home/camilo/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"
export GOPATH_PACK="$HOME/go/bin"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH_PACK:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $HOME/.dotfiles/shell/init.sh
# source $HOME/.dotfiles/shell/zsh/key-bindings.zsh