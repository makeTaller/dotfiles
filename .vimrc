set nu
syntax on
colorscheme desert
execute pathogen#infect()
filetype plugin indent on


" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
