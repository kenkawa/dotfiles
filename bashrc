alias ll='ls -al'     # llコマンド隠しファイルも見たいので、-aも追加
alias h='history'  # historyコマンドの省略
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
