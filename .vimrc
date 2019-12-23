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

source ~/.vim/plugin/matchit.vim

set statusline+=%F
set nu rnu
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
call plug#begin('~/.vim/plugged')

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

" Toggle nerdtree
nmap <F6> :NERDTreeToggle<CR>

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
 

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
" mattn/emmet \"_" " 
"
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" JavaScript {{{
        Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
        " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
        Plug 'moll/vim-node', { 'for': 'javascript' }
	Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
	Plug 'MaxMEllon/vim-jsx-pretty'
	let g:vim_jsx_pretty_highlight_close_tag = 1
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" add to .vimrc
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'"
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
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()            " required
filetype plugin indent on    " required
