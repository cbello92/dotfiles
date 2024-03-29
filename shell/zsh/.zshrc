export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="cdev"
# ZSH_THEME="gndx-zsh-theme/gndx"
plugins=(zsh-syntax-highlighting zsh-autosuggestions nvm)

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/shell/init.sh


export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh

export DENO_INSTALL="/home/camilo/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

source $HOME/.dotfiles/shell/zsh/key-bindings.zsh

# pnpm
export PNPM_HOME="/home/camilo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end