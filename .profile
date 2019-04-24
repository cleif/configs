source ~/.bashrc
source <(npm completion)
source ~/.git-completion.bash
source ~/.git-prompt.sh
export LC_CTYPE="en_US.UTF-8"
alias ls='ls --color'
alias gp='git pull'
alias ..='cd ..'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
