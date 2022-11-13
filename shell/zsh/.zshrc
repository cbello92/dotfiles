#source ~/zsh-snap/znap.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="gndx-zsh-theme/gndx"
#ZSH_THEME="gnzh"
# ZSH_THEME="dracula"

plugins=(zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Alias for access projects
alias pr="cd /home/camilo/projects-ripley"
alias mp="cd /home/camilo/my-projects"
alias psw="cd /home/camilo/projects-ripley/software-sales/ripley-api-integration-intcomex && code ."
alias envs="cd /app/secrets"

# Alias for edit zsh
alias configzsh="sudo nano ~/.zshrc" 

# Alias generics
alias net-r="sudo service network-manager restart"
alias nvm-u="nvm alias default"
alias net-reset="sudo netstat winsock reset catalog && netstat int ipv4 reset reset.log"
alias ..="cd .."
alias ll="ls -l"
alias la="ls -la"

# Alias for Docker
alias dcl="docker-compose -f docker-compose-local.yml up --force-recreate"
alias dcd="docker-compose -f docker-compose-devel.yml up --force-recreate"
alias mongo-l="docker logs -f ripley-api-mongo-db"
alias manifest-l="docker logs -f ripley-api-manifest"
alias bffmanifest-l="docker logs -f ripley-bff-seller-manifest"
alias order-l="docker logs -f ripley-api-orders"
#alias mongosh="docker exec -it ripley-api-mongo-db sh"
alias manifestsh="docker exec -it ripley-api-manifest sh"
alias ordersh="docker exec -it ripley-api-orders sh"

# Alias for git
alias gicb="git checkout -b"
alias gicd="git checkout develop"
alias gicm="git checkout master"
alias gicq="git checkout qa"
alias gia="git add"
alias gic="git commit -m"
alias giamend="git commit --amend"
alias gip= "git push origin"
alias gipff="git push -ff origin"
alias release-start="git flow release start"
alias release-end="git flow release finish"


export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


base_dir="$HOME/projects-ripley"
_open_project_ripley() {
	project=$(ls "$base_dir" | fzf)
	if [[ -n $project ]]; then 
		cd "$base_dir/$project"
		code .
		zle reset-prompt
	else
		return
	fi 
}

_cd_to_dir_project_ripley() {
	project=$(ls "$base_dir" | fzf)
	if [[ -n $project ]]; then 
		cd "$base_dir/$project"
		zle reset-prompt
	else
		return
	fi
}

_open_secrets_ripley() {
	base_dir_secrets="/app/secrets"
	project_secret=$(ls "$base_dir_secrets" | fzf)

	if [[ -n $project_secret ]]; then 
		cd "$base_dir_secrets/$project_secret"
		code .
		zle reset-prompt
	else
		return
	fi
}

zle -N _open_project_ripley
bindkey "^p"  _open_project_ripley

zle -N _cd_to_dir_project_ripley
bindkey "^s"  _cd_to_dir_project_ripley

zle -N _open_secrets_ripley
bindkey "^e" _open_secrets_ripley
