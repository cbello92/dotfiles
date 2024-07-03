alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'

# Alias for access projects
alias pr="cd $HOME/projects-ripley"
alias mp="cd $HOME/my-projects"
alias psw="cd $HOME/projects-ripley/ripley-api-software-sales && code ."
alias envs="cd /app/secrets"
alias dotf="cd $HOME/.dotfiles && code ."

alias vsc="code ."

# Alias for edit zsh
alias configzsh="code $HOME/.dotfiles/shell/zsh/.zshrc"

# Alias generics
alias net-r="sudo service network-manager restart"
alias nvm-u="nvm alias default"
alias net-reset="sudo netstat winsock reset catalog && netstat int ipv4 reset reset.log"
alias ..="cd .."
alias ~="cd ~"
alias cdf='_fzf_cd'

# Alias for Docker
alias dcl="docker-compose -f docker-compose-local.yml up --force-recreate"
alias dcd="docker-compose -f docker-compose-devel.yml up --force-recreate"
alias mongo-l="docker logs -f ripley-api-mongo-db"
alias manifest-l="docker logs -f ripley-api-manifest"
alias bffmanifest-l="docker logs -f ripley-bff-seller-manifest"
alias order-l="docker logs -f ripley-api-orders"
alias manifestsh="docker exec -it ripley-api-manifest sh"
alias ordersh="docker exec -it ripley-api-orders sh"

alias getsecret="_get_secret_tools_by_name"

# Alias for mongo
alias mongoqa='mongosh mongodb+srv://$(_get_secret_tools_by_name volt_qa_host_mongodb) --apiVersion 1 --username $(_get_secret_tools_by_name volt_qa_user_mongodb) --password $(_get_secret_tools_by_name volt_qa_password_mongodb)'
alias mongodev='mongosh mongodb+srv://$(_get_secret_tools_by_name mqa_host) --apiVersion 1 --username $(_get_secret_tools_by_name mqa_user) --password $(_get_secret_tools_by_name mqa_password)'
alias mongoprd='mongosh mongodb+srv://$(_get_secret_tools_by_name mprd_host) --apiVersion 1 --username $(_get_secret_tools_by_name mprd_user) --password $(_get_secret_tools_by_name mprd_password)'

# Alias for git
alias gs="git status"
alias gsw="git switch"
alias gcb="git checkout -b"
alias gfeat='_feature_branch'
alias gfix='_hotfix_branch'
alias gref='_refactor_branch'
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gcq="git checkout qa"
alias ga="git add"
alias gc="git commit"
alias gcv="git commit --no-verify"
alias gca="git commit --amend"
alias gcav="git commit --amend --no-verify"
alias gp="git push origin HEAD"
alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gpt="git push --tags"
alias gpff="git push -ff origin HEAD"
alias gbrm="git branch -D"
alias release-start="git flow release start"
alias release-end="git flow release finish"

alias air='$(go env GOPATH)/bin/air'


alias gotest="go test ./...  -coverpkg=./... -coverprofile ./coverage.out && go tool cover -html=coverage.out"