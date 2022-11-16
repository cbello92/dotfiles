function git_prompt_info() {
    inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
    if [ "$inside_git_repo" ]; then
        local current_branch=$(git branch --show-current)
        local colorTextBranch="%{$fg_bold[yellow]%}";
        git_status=$(git diff --stat | tail -n1 2>/dev/null)
        if [ "$git_status" ]; then
            print -P "${colorTextBranch}【${current_branch} 🔥】";
        else
            print -P "${colorTextBranch}【${current_branch} 💚】"
        fi
    else
        echo ""
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

function get_name_desktop() {
    local colorText="%{$fg_bold[cyan]%}";
    local name_desktop="%m";
    echo "${colorText}💻 [${name_desktop}]";
}


PROMPT='$(get_name_desktop) $(get_time) $(get_current_directory)$(git_prompt_info)%{$fg_bold[magenta]%} 》'