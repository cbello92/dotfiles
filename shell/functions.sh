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

_get_secret_tools_by_name() {
	secret-tool lookup password $1
}

_feature_branch() {
	if [[ -z $1 ]]; then
		echo "You must enter a name for the branch"
		return
	fi
	git checkout -b feature/$1;
}

_hotfix_branch() {
	if [[ -z $1 ]]; then
		echo "You must enter a name for the branch"
		return
	fi
	git checkout -b hotfix/$1;
}

_refactor_branch() {
	if [[ -z $1 ]]; then
		echo "You must enter a name for the branch"
		return
	fi
	git checkout -b refactor/$1;
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

_show_scripts_package_json() {
	if cat package.json > /dev/null 2>&1; then
    	script_name=$(cat package.json | jq .scripts | jq 'keys | .[]' | fzf --height 25%)

		if [[ -n $script_name ]]; then
			format_script_name=$(echo $script_name | tr -d '"')
			yarn run $format_script_name;
			zle reset-prompt
		else
			zle reset-prompt
			return
		fi
	else
		return
	fi
}

_fzf_cd() {
  local dir
  dir=$(find . -maxdepth 1 -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}