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

" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
" """"""""""""""""""""""""""""""
" " Unit.vimの設定
" """"""""""""""""""""""""""""""
" " 入力モードで開始する
let g:unite_enable_start_insert=1
" " バッファ一覧
noremap <C-P> :Unite buffer<CR>
" " ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" " 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" " sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" " ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" " ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" " ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" """"""""""""""""""""""""""""""


" ファイルをtree表示してくれる
NeoBundle 'nathanaelkane/vim-indent-guides'
" " vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1


NeoBundle 'scrooloose/nerdtree'
" カラースキーム一覧表示に Unite.vim を使う
NeoBundle 'ujihisa/unite-colorscheme'
" jellybeans カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
" cake.vim
NeoBundle 'violetyk/cake.vim'
" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

call neobundle#end()


filetype plugin indent on     " required!
filetype indent on
syntax on

NeoBundleCheck
