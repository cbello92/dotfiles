zle -N _open_project_ripley
bindkey "^p"  _open_project_ripley

zle -N _cd_to_dir_project_ripley
bindkey "^s"  _cd_to_dir_project_ripley

zle -N _open_secrets_ripley
bindkey "^e" _open_secrets_ripley

zle -N _show_scripts_package_json
bindkey "^q" _show_scripts_package_json

bindkey -s '^O' 'cdf\n'