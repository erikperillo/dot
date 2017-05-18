"PLUG OPTIONS
call plug#begin('~/.vim/plugged')

"auto-completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"auto-completion (and other stuff) for python
Plug 'zchee/deoplete-jedi'
"auto-completion for C-like languages
Plug 'zchee/deoplete-clang'
"use tab for completion
Plug 'ervandew/supertab'

"make utilities/syntatic checking
Plug 'neomake/neomake'

"cool status line
Plug 'vim-airline/vim-airline'
"airline themes
Plug 'vim-airline/vim-airline-themes'

"latex utilities
Plug 'lervag/vimtex'

"cool colorschemes
Plug 'flazz/vim-colorschemes'

"fullscreen toggling on/off for panes
Plug 'troydm/zoomwintab.vim'

"html tags auto-closing with '>'
Plug 'alvan/vim-closetag'

call plug#end()


"DEOPLETE OPTIONS
"use at startup
let g:deoplete#enable_at_startup=1


"SUPERTAB OPTIONS
"circle suggestioins from top to bottom
let g:SuperTabDefaultCompletionType="<c-n>"

"closes popup preview window while restoring splits layout
function ClosePreviewWindowRestoringSplit()
    let saved_win_layout = winrestcmd()
    if pumvisible() == 0
        silent! pclose
    endif
    "execute 'silent! saved_win_layout'
    silent! execute saved_win_layout
endfunction

"close annoying preview window
"alternative 1
"let g:SuperTabClosePreviewOnPopupClose = 1
"alternative 2
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"alternative 3
"autocmd CursorMovedI * call ClosePreviewWindowRestoringSplit()
"autocmd InsertLeave * call ClosePreviewWindowRestoringSplit()
"do not show preview window on completion
set completeopt-=preview

"DEOPLETE-JEDI OPTIONS
"show docstrings on preview window when matching
let g:deoplete#sources#jedi#show_docstring=1


"DEOPLETE-CLANG OPTIONS
"path to libclang.so
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'

"clang include header directory path
let g:deoplete#sources#clang#clang_header='/lib/clang'


"NEOMAKE OPTIONS
"run neomake on every write
autocmd! BufWritePost * Neomake


"VIM-AIRLINE OPTIONS
"do not need to split to see airline
set laststatus=2

"hide default status bar
set noshowmode

"cool theme
let g:airline_theme='bubblegum'

"use fancy symbols on powerline (> etc)
let g:airline_powerline_fonts=1

"removing all fancy symbols of status line
"you may uncomment it on some terminals with missing characters
"checking existance before assigning
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_left_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_sep = ''
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.paste = ''
"let g:airline_symbols.paste = ''
"let g:airline_symbols.paste = ''
"let g:airline_symbols.whitespace = ''


"VIMTEX OPTIONS
"compile .tex docs every time file changes
let g:vimtex_latexmk_continuous=1


"LEADER STUFF
"setting up leader to space
let mapleader="\<SPACE>"

"search and replace
nmap <Leader>s :%s//<Left><Left>
nmap <Leader>S :s//<Left><Left>
"open file
nmap <Leader>e :e <Right>
"split panes
nmap <Leader>v :vsp <Right>
nmap <Leader>h :sp <Right>
"open in new tab
nmap <Leader>t :tabedit <Right>
"write file
nmap <Leader>w :w <Return>
"quit nvim
nmap <Leader>q :q <Return>
"open terminal on horizontal split
nmap <Leader>T :sp term://bash <Return>
"turn highlight off for search
nmap <leader>H :set hlsearch!<cr>
"copy to system clipboard
nmap <leader>y "+y


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
"...unless the query has capital letters
set smartcase
"incremental search.
set incsearch

"use 'g' flag by default with :s/foo/bar/
set gdefault

"true colors in terminal
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"colorsheme
colorscheme jellybeans
"for better working with colorscheme
set background=dark

"syntax
syntax on

"sets a visual column for delimiting text width
set colorcolumn=81

"highlighting previous column with a dark gray color
highlight ColorColumn ctermbg=235

"alternative navigation between splits
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
"alternative navigation between tabs
nnoremap <A-i> gt
nnoremap <A-u> gT

"splits resizing
noremap <silent> <C-H> :vertical resize -4<CR>
noremap <silent> <C-L> :vertical resize +4<CR>
noremap <silent> <C-J> :resize +4<CR>
noremap <silent> <C-K> :resize -4<CR>

"switch to normal mode in terminal
:tnoremap <C-n> <C-\><C-n>

"terminal scroll buffer size
let g:terminal_scrollback_buffer_size=100000

"proper encoding
set encoding=utf-8

"display the absolute line number at the line you're on
set number
"display relative line numbers
set relativenumber
"keep the line number gutter narrow so three digits is cozy
set numberwidth=2

"more natural splits
"horizontal split below current
set splitbelow
"vertical split to right of current
set splitright

"disable relative line number for latex files for performance reasons
au BufRead,BufNewFile *.tex set norelativenumber
au BufRead,BufNewFile *.bib set norelativenumber

"highlight all tabs and trailing whitespace characters
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/
