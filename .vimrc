""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initializatioin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" initial pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
" infect bundles
call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically detect file types
filetype plugin indent on
" auto read when a file is changed from the outside
set autoread
" turn off backup
set nobackup
" turn off swap
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight current line
set cursorline
" always show current position
set ruler
" show matching brackets when text indicator is over them
set showmatch
" show line numbers
set number
" no extra spaces between rows
" set linespace
" don't redraw while executing macros (good performance config)
set lazyredraw
" turn magic on for regular expressions
set magic
" backspace for dummies
set backspace=indent,eol,start
" find as you type search
set incsearch
" highlight search terms
set hlsearch
" windows can be 0 line high
set winminheight=0
" case insensitive search
set ignorecase
" case sensitive when uc present
set smartcase
" show list instead of just completing
set wildmenu
" command <Tab> completion, list matches, then longest common part, then all
set wildmode=list:longest,full
" abbrev. of messages (avoids 'hit enter')
set shortmess+=filmnrxoOtT
" better unix / windows compatibility
set viewoptions=folds,options,cursor,unix,slash
" allow for cursor beyond last character
set virtualedit=onemore
" store a ton of history (default is 20)
set history=1000
" spell checking on
" set spell
" allow buffer switch without saving
set hidden
" highlight problematic whitespaces
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.
" wrap long lines
set wrap
" indent at the same level of the previous line
set autoindent
" use indents of 4 spaces
set shiftwidth=4
" tabs are spaces, not tabs
set expandtab
" an indentation every four columns
set tabstop=4
" let backspace delete indent
set softtabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting
syntax on
" assume background
set background=dark
" default encoding
set encoding=utf-8
" use unix as the standard file type
set fileformats=unix,dos,mac
" set scheme
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" always show the status line
set laststatus=2
" format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

" easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
" clear highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>
