filetype off                  " required
execute pathogen#infect()

let python_highlight_all=1
let g:javascript_plugin_flow = 1
let g:ycm_autoclose_preview_window_after_completion=1

"----Mapping ---"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

filetype plugin indent on    " required
syntax on 
colorscheme peachpuff

set rnu
set clipboard=unnamed
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin()

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Buffer Operations
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead, *.py
		\set tabstop=4 
		\set softtabstop=4
		\set shiftwidth=4
		\set textwidth=79 
		\set expandtab 
		\set autoindent 
		\set fileformat=unix 

 au BufNewFile,BufRead,  *.html, *.js, *.css
			 \set tabstop=2 
			 \set softtabstop=2 
			 \set shiftwidth=2 

 au BufNewFile,BufRead, *.go
			 \set tabstop=4 
			 \set softtabstop=4 
			 \set shiftwidth=4 
			 \set noexpandtab 
			 \set smarttab

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
"Javascript santax 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'gmarik/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()            " required
filetype plugin indent on    " required
