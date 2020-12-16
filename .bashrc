# alias
alias clc='clear'
alias gp='git pull'
alias gdev='git checkout dev'
alias glone='git log --oneline'
alias g-status='git status'
alias mongo-st='sudo systemctl start mongodb'
alias mongo-ee='sudo systemctl enable mongodb'
alias mongo-ss='sudo systemctl status mongodb'
alias mongo-sp='sudo systemctl stop mongodb'
alias db='npm run debug'
alias dd='npm run dev'
alias port-ls='sudo netstat -ntlp | grep LISTEN'
alias clear-api-port='sudo kill $(sudo lsof -t -i:10000)'
alias isLocalhost='npm run hostnameScript'
alias chrome-bug='google-chrome --remote-debugging-port=9222'
alias test-watch='npm run testWatch'

# git branch + color code
# replace existing PS1 definition with the following:
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
