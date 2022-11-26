function git_prompt_info() {
    inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
    if [ "$inside_git_repo" ]; then
        local current_branch=$(git branch --show-current);
        git_status=$(git status -s | tail -n1 2>/dev/null);
        if [ "$git_status" ]; then
            echo "%{$fg[magenta]%} on %F{190}${current_branch} 🔥";
        else
            echo "%{$fg[magenta]%} on %F{190}${current_branch} 💚";
        fi
    else
        echo "";
    fi
}

function get_time() {
    local colorText="%{$fg_bold[cyan]%}"
    local time="$(date +%H:%M)";
    echo "🕥 ${colorText}${time}";
}

function get_current_directory() {
    local colorText="%{$fg[white]%}";
    local directory="%~";
    echo "${colorText}📦 ${directory}";
}

function get_about_system() {
    local color_text="%{$fg_bold[cyan]%}";
    local name_user_and_machine="%n@%m";
    echo "${color_text} ツ [${name_user_and_machine}]";
}

function get_arrow() {
    echo "%{$fg_bold[yellow]%}❱%{$fg_bold[blue]%}❱%{$fg_bold[red]%}❱";
}

PROMPT='$(get_about_system) $(get_time) $(get_current_directory)$(git_prompt_info) $(get_arrow) ';
