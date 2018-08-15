set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()

let g:javascript_plugin_flow = 1


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
"
"
"Javascript santax 
Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'w0rp/ale'

filetype plugin indent on    " required

set nu

set splitbelow
set splitright

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
" Enable Folding
set foldmethod=indent
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

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

Plugin 'vim-scripts/indentpython.vim'

set encoding=utf-8

Plugin 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on 

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


colorscheme peachpuff


Plugin 'scrooloose/nerdtree'

"autocmd vimenter * NERDTree

"Plugin 'jistr/vim-nerdtree-tabs'

"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed

Bundle 'christoomey/vim-tmux-navigator'

" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()            " required
filetype plugin indent on    " required
