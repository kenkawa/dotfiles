if has('vim_starting')
	set nocompatible               " be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

"Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
"最近使ったファイルを表示
NeoBundle 'Shougo/neomru.vim'

call neobundle#end()


filetype plugin indent on     " required!
filetype indent on
syntax on

NeoBundleCheck
