"PLUG STUFF
call plug#begin('~/.vim/plugged')

"auto-completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"auto-completion (and other stuff) for python
Plug 'zchee/deoplete-jedi'
"auto-completion for C-like languages
Plug 'zchee/deoplete-clang'

"make/syntatic checking
Plug 'neomake/neomake'

"cool status line
Plug 'vim-airline/vim-airline'
"airline themes
Plug 'vim-airline/vim-airline-themes'

"cool colorschemes
Plug 'flazz/vim-colorschemes'

call plug#end()


"DEOPLETE STUFF
"use at startup
let g:deoplete#enable_at_startup = 1

"tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"close annoying preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


"DEOPLETE-JEDI STUFF
"show docstrings on preview window when matching
let g:deoplete#sources#jedi#show_docstring = 1


"DEOPLETE-CLANG STUFF
"path to libclang.so
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'

"clang include header directory path
let g:deoplete#sources#clang#clang_header = '/lib/clang'


"NEOMAKE STUFF
"run neomake on every write
autocmd! BufWritePost * Neomake

"VIM-AIRLINE STUFF
"do not need to split to see airline
set laststatus=2

"hide default status bar
set noshowmode

"cool theme
let g:airline_theme='tomorrow'

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


"RANDOM STUFF
"show matching brackets
set showmatch

"show the line and column numbers of the cursor
set ruler

"insert spaces when TAB is pressed
set expandtab
"render TABs using this many spaces
set tabstop=4
"indentation amount for < and > commands
set shiftwidth=4

"no beeps.
set noerrorbells

"highlight search results.
set hlsearch

"make searching case insensitive
set ignorecase
"... unless the query has capital letters
set smartcase
"incremental search.
set incsearch

"use 'g' flag by default with :s/foo/bar/
set gdefault

"true colors in terminal
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"colorsheme
colorscheme jellybeans

"syntax
syntax on

"sets a visual column for delimiting text width
set colorcolumn=81

"highlighting previous column with a dark gray color
highlight ColorColumn ctermbg=235
