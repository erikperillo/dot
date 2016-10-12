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
"syntax checking
Plugin 'scrooloose/syntastic'

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
"let g:airline_theme='tomorrow'

"settings for bar appearance
"checking existance before assigning
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"removing all fancy symbols of status line
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


"YOUCOMPLETEME THINGS

"global configuration file for C-family languages
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"use python completion
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'

"close annoying preview window
let g:ycm_autoclose_preview_window_after_insertion = 1


"SYNTASTIC THINGS

"use python 3 syntax checker by default
let g:syntastic_python_python_exec = '/usr/bin/python3'


"OTHER THINGS

"latex stuff
let g:tex_flavor = "latex"
set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf

"color syntax
syntax on

"colorsheme
colorscheme jellybeans

"sets a visual column for delimiting text width
set colorcolumn=81

"highlighting previous column with a dark gray color
highlight ColorColumn ctermbg=235

"sets size of tab (4 spaces)
set tabstop=4       

"size of spaces when (auto)indenting
set shiftwidth=4    

"replace tabs for spaces in python source files
autocmd Filetype python setlocal expandtab

"highlights .tpp files as .cpp files
autocmd BufNewFile,BufReadPost *.tpp set filetype=cpp

"panes resizing
if bufwinnr(1)
  noremap <silent> <C-H> :vertical resize -4<CR>
  noremap <silent> <C-L> :vertical resize +4<CR>
  noremap <silent> <C-J> :resize +4<CR>
  noremap <silent> <C-K> :resize -4<CR>
endif
