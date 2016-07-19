" setup for plugin marager (Vundle)
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tclem/vim-arduino'
Plugin '4Evergreen4/vim-hardy'


""""""""""""""""""""""""""""""""""""""""""""""""""""
" List plugins


"""""""""""""""""""""""""""""""""""""""""""""""""""
" finish setup for plugin manager
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" general vim settings
syntax on " enable syntax highlight
colorscheme monokai

set enc=utf-8           " utf-8 default encoding
set ls=2                " always show status bar
set incsearch           " incremental search
set hlsearch            " highlighted search results
set nu                  " line numbers
set scrolloff=2         " keep some more lines for scope

set expandtab smarttab " insert spaces instead of tabs
set tabstop=4 shiftwidth=4 " number of spaces for tab
set autoindent " keep indent for new lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" custom shortcuts
let mapleader=","

nmap <silent> <leader>rv :so $MYVIMRC<CR>       " reload vimrc on <leader>+rv
nmap <silent> <leader>ov :e $MYVIMRC<CR>        " open vimrc on <leader>+ov

" CTRL-Z is Undo
noremap <C-z> u
inoremap <C-z> <C-O>u

" CTRL-Y is Redo
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-A is Select all
noremap <C-a> gggH<C-O>G
inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-a> <C-C>gggH<C-O>G
onoremap <C-a> <C-C>gggH<C-O>G
snoremap <C-a> <C-C>gggH<C-O>G
xnoremap <C-a> <C-C>ggVG

" CTRL-S is Quicksave command
noremap <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>

" Navigate between splited windows with ctrl+[hjkl]
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""""" NERD_tree plugin
"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <F2> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" language supports
" --- C/C++/C# ---
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType cs setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal commentstring=/*\ %s\ */
autocmd FileType cpp,cs setlocal commentstring=//\ %s
let c_no_curly_error=1
let g:syntastic_cpp_include_dirs = ['include', '../include']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_c_include_dirs = ['include', '../include']
let g:syntastic_c_compiler = 'clang'

" -- Arduino files ---
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

