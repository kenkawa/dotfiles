alias ls='ls --color=auto'
alias h='history'  # historyコマンドの省略
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
export PS1="\[\e[1;32m\][\u@\h:\w]\$\[\e[00m\] "
