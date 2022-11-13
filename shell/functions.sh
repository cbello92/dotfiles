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