"PLUG OPTIONS
call plug#begin('~/.vim/plugged')

"use tab for completion
Plug 'ervandew/supertab'

"code completion
"Plug 'valloric/youcompleteme'

"syntax highlighing
Plug 'vim-syntastic/syntastic'

"cool status line
Plug 'vim-airline/vim-airline'

"airline themes
Plug 'vim-airline/vim-airline-themes'

"fullscreen toggling on/off for panes
Plug 'troydm/zoomwintab.vim'

call plug#end()


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
set completeopt-=preview


"SYNTASTIC OPTIONS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"VIM-AIRLINE OPTIONS
"do not need to split to see airline
set laststatus=2

"hide default status bar
set noshowmode

"cool theme
let g:airline_theme='bubblegum'

"use fancy symbols on powerline (> etc)
let g:airline_powerline_fonts=0

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


"LEADER STUFF
"setting up leader to space
let mapleader="\<SPACE>"

"search and replace
nmap <Leader>s :%s//<Left>
nmap <Leader>S :s//<Left>

"open file
nmap <Leader>e :e <Right>

"write file
nmap <Leader>w :w <Return>

"split panes
nmap <Leader>v :vsp <Right>
nmap <Leader>h :sp <Right>

"open in new tab
nmap <Leader>t :tabedit <Right>

"quit nvim
nmap <Leader>q :q <Return>

"turn highlight off for search
nmap <leader>H :set hlsearch!<cr>

"copy to system clipboard
nmap <leader>y "+y


"RANDOM STUFF
" let's not look back
set nocompatible

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
"set colorcolumn=81

"highlighting previous column with a dark gray color
highlight ColorColumn ctermbg=235

"alternative navigation among splits
"nmap <A-J> <C-\><C-n><C-w>j
"nmap <A-K> <C-\><C-n><C-w>k
"nmap <A-L> <C-\><C-n><C-w>l
"nmap <A-H> <C-\><C-n><C-w>h
"some terminals require this as alt...
nmap <silent> j :wincmd j<CR>
nmap <silent> k :wincmd k<CR>
nmap <silent> l :wincmd l<CR>
nmap <silent> h :wincmd h<CR>

"alternative navigation among tabs
"nmap <silent> <A-N> gT
"nmap <silent> <A-M> gt
nmap <silent> n gT
nmap <silent> m gt

"splits resizing
"nmap <silent> <A-Y> :vertical resize -4<CR>
"nmap <silent> <A-U> :vertical resize +4<CR>
"nmap <silent> <A-I> :resize +4<CR>
"nmap <silent> <A-O> :resize -4<CR>
nmap <silent> y :vertical resize -4<CR>
nmap <silent> o :vertical resize +4<CR>
nmap <silent> i :resize +4<CR>
nmap <silent> u :resize -4<CR>

"split fullscreen toggle
"nmap <silent> <A-B> <C-\><C-n><C-w>o
nmap <silent> b <C-\><C-n><C-w>o

"terminal scroll buffer size
let g:terminal_scrollback_buffer_size=100000

"timeouts for key shortcuts
set timeoutlen=1000 ttimeoutlen=0

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

filetype plugin indent on
