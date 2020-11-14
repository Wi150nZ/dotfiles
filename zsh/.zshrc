# TODO: handle ssh prompt

function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo ':: ['$branch'] '
    fi
}

setopt prompt_subst
PROMPT='%1d $(git_branch)> '