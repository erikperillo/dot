"VUNDLE THINGS

"settings

"be iMproved, required
set nocompatible              

"required
filetype off                  

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugins
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"status line
Plugin 'bling/vim-airline'
"auto completion
Plugin 'Valloric/YouCompleteMe'

"closing stuff 
call vundle#end()


"VIM-AIRLINE THINGS 

"do not need to split to see airline
set laststatus=2

"set proper colors
set t_Co=256

"hide default status bar
set noshowmode

"cool theme
let g:airline_theme='tomorrow'

"setting of bar appearance
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.whitespace = ''


"OTHER THINGS

"color syntax
syntax on

"colorsheme
colorscheme xoria256

"size of tab (4 spaces)
set tabstop=4       

"size of spaces when (auto)indenting
set shiftwidth=4    

"replace tabs for spaces in python source files
autocmd Filetype python setlocal expandtab
