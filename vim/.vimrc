"PLUG OPTIONS
call plug#begin('~/.vim/plugged')

"use tab for completion
Plug 'ervandew/supertab'

"code completion
Plug 'valloric/youcompleteme'

"syntax highlighing
Plug 'vim-syntastic/syntastic'

"cool status line
Plug 'vim-airline/vim-airline'

"airline themes
Plug 'vim-airline/vim-airline-themes'

"fullscreen toggling on/off for panes
Plug 'troydm/zoomwintab.vim'

"file navigation
Plug 'scrooloose/nerdtree'

"latex utilities
Plug 'lervag/vimtex'

"unite
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make'}

"vue highlighing
Plug 'posva/vim-vue'

call plug#end()

let $GIT_TERMINAL_PROMPT=1


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

"syntatic checkers
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225,E265,E303,E226,E713,E305,W504,E722,E731,E502,E401,E261,E262,E227,E228'


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


"NERDTREE STUFF
"size of window
:let g:NERDTreeWinSize=24


"UNITE
let g:unite_enable_start_insert = 1
let g:unite_update_time = 300


"LEADER STUFF
"setting up leader to space
let mapleader="\<SPACE>"

"search and replace
noremap <Leader>s :%s/<Left>
noremap <Leader>S :s/<Left>

"open file
noremap <Leader>e :e <Right>

"write file
noremap <Leader>w :w <Return>

"split panes
noremap <Leader>v :vsp <Right>
noremap <Leader>h :sp <Right>

"open in new tab
noremap <Leader>t :tabedit <Right>

"quit nvim
noremap <Leader>q :q <Return>

"turn highlight off for search
noremap <leader>H :set hlsearch!<cr>

"copy to system clipboard
noremap <leader>y "+y

"related files
noremap <unique> <leader>rf :RelatedFilesWindow<cr>

"close syntastic window
noremap <unique> <leader>sr :SyntasticReset<CR>
noremap <unique> <leader>st :SyntasticToggleMode<CR>

"nerdtree
noremap <unique> <leader>nT :NERDTreeToggle<CR>
noremap <unique> <leader>nt :NERDTreeFocus<CR>
noremap <unique> <leader>nf :NERDTreeFind<CR>


"RANDOM STUFF
" let's not look back
set nocompatible

"show matching brackets
set showmatch

"show the line and column numbers of the cursor
set ruler

"render TABs using this many spaces
set tabstop=4
autocmd FileType go set tabstop=4
"indentation amount for < and > commands
set shiftwidth=4
"insert spaces when TAB is pressed
set expandtab

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

"alternative navigation among splits
nnoremap <silent> <A-j> :wincmd j<CR>
nnoremap <silent> <A-k> :wincmd k<CR>
nnoremap <silent> <A-l> :wincmd l<CR>
nnoremap <silent> <A-h> :wincmd h<CR>
"some terminals require this as alt...
"nnoremap <silent> j :wincmd j<CR>
"nnoremap <silent> k :wincmd k<CR>
"nnoremap <silent> l :wincmd l<CR>
"nnoremap <silent> h :wincmd h<CR>

"alternative navigation among tabs
nnoremap <silent> <A-n> gT
nnoremap <silent> <A-m> gt
"nnoremap <silent> n gT
"nnoremap <silent> m gt

"splits resizing
nnoremap <silent> <A-y> :vertical resize -4<CR>
nnoremap <silent> <A-o> :vertical resize +4<CR>
nnoremap <silent> <A-i> :resize +4<CR>
nnoremap <silent> <A-u> :resize -4<CR>
"nnoremap <silent> y :vertical resize -4<CR>
"nnoremap <silent> o :vertical resize +4<CR>
"nnoremap <silent> i :resize +4<CR>
"nnoremap <silent> u :resize -4<CR>

"split fullscreen toggle
nnoremap <silent> <A-b> :ZoomWinTabToggle<CR>
"nnoremap <silent> b :ZoomWinTabToggle

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

"highlight all tabs and trailing whitespace characters
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

"proper colors
set term=xterm-256color
"proper background color
set t_ut=

filetype plugin indent on
