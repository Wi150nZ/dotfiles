# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=500
HISTFILESIZE=500

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git support for the bash prompt
git_status() {
    branch_name=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    branch_status=$(git status --porcelain=v1 2>/dev/null | wc -l | awk '{$1=$1};1')

    if [[ $branch_name == "" ]]; then
        :
    else
        if [[ $branch_status == 0 ]]; then
            echo ':: ['$branch_name'] '
        else
            echo ':: ['$branch_name'*] '
        fi
    fi
}

USER="\u"
HOST="\h"
WORKING_DIR="\W"
GIT="\$(git_status)"

export PS1="$WORKING_DIR $GIT> "

## vscode from flatpak
function code() {
  (flatpak run com.visualstudio.code $*)
}
