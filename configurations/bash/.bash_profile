# author: Wilson Zhu
# bash configuration file that is executed on shell login
# macOS treats a new session of the terminal as a login, hence why the configuration is in here instead of the .bashrc

# git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

HOST="\[\e[34m\]Wilson@IBM\[\e[39m\]"
DIR="\[\e[35m\]\W\[\e[39m\]"
GIT="\[\e[32m\]\$(parse_git_branch)\[\e[39m\]"

export PS1="$HOST $DIR$GIT → "

# golang settings
export GOPATH=$HOME/.golang
export PATH=~/.npm-globals/bin:$PATH
export PATH=~/platform-tools:$PATH

# alias
alias oc=$HOME/local_bin/oc
