# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

alias ll='ls -al'     # llコマンド(隠しファイルも見たいので、-aも追加)
alias h='history'  # historyコマンドの省略)
