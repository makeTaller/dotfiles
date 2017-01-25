
if 0 | endif

 if &compatible
	    set nocompatible               " Be iMproved
	     endif

	      " Required:
	        set runtimepath+=~/.vim/bundle/neobundle.vim/
	      
	         " Required:
                call neobundle#begin(expand('~/.vim/bundle/'))
	     
	      "     " Let NeoBundle manage NeoBundle
	      "      " Required:
	              NeoBundleFetch 'Shougo/neobundle.vim'
	      "
	      "        " My Bundles here:
	      "         " Refer to |:NeoBundle-examples|.
	             " Note: You don't set neobundle setting in .gvimrc!
                 call neobundle#end()

" Required:
NeoBundleCheck

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

set nu

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable Folding
set foldmethod=indent
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

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


if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

call togglebg#map("<F5>")

Plugin 'scrooloose/nerdtree'

autocmd vimenter * NERDTree

"Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed

Bundle 'christoomey/vim-tmux-navigator'

" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
Plugin 'jmcantrell/vim-virtualenv'

