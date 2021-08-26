filetype off                  " required

let python_highlight_all=1
let g:javascript_plugin_flow = 1
let g:airline_theme='jellybeans' " <theme> is a valid theme name
let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:vim_jsx_pretty_highlight_close_tag = 1

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:tmuxline_theme = 'airline'


filetype plugin indent on    " required
" syntax on 
colorscheme torte

" User Mappings
map kt1 ggO#!/bin/bash# Author: Kirk Tolliver:3 r! echo "\# $(date)"o# Description Here!


"set statusline+=%F
set nu rnu
set clipboard=unnamed
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

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


ca tn tabnew
ca th tabp
ca tl tabn

" Toggle nerdtree
nmap <F2> :NERDTreeToggle<CR>

autocmd FileType markdown setlocal spell
au BufNewFile,BufRead, *.py
		\set tabstop=4 
		\set softtabstop=4
		\set shiftwidth=4
		\set textwidth=79 
		\set expandtab 
		\set autoindent 
		\set fileformat=unix 

au FileType html,css
    \ setlocal tabstop=2 softtabstop=2 shiftwidth=2

 au BufNewFile,BufRead, *.go
			 \set tabstop=4 
			 \set softtabstop=4 
			 \set shiftwidth=4 
			 \set noexpandtab 
			 \set smarttab

call plug#begin('~/.config/nvim/plugged')

" JavaScript {{{
        Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
        " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
        Plug 'moll/vim-node', { 'for': 'javascript' }
	Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
	Plug 'MaxMEllon/vim-jsx-pretty'
    " }}}
" match tags in html, similar to paren support
Plug 'gregsexton/MatchTag', { 'for': 'html' }

" Styles {{{
        Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
        Plug 'groenewege/vim-less', { 'for': 'less' }
        Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
        Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
        Plug 'stephenway/postcss.vim', { 'for': 'css' }
    " }}}

" html5 support
Plug 'othree/html5.vim', { 'for': 'html' }

" Plug 'adelarsq/vim-matchitgvim'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Tim Pope Plugins 
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Code formater 
Plug 'sbdchd/neoformat'
Plug 'edkolev/tmuxline.vim'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin()

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'thaerkh/vim-indentguides'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tlib_vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()            " required

filetype plugin indent on    " required
