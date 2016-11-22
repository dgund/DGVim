""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                  ____   ______     ___                       "
"    DGVim: a .vimrc              |  _ \ / ___\ \   / (_)_ __ ___              "
"                                 | | | | |  _ \ \ / /| | '_ ' _ \             "
"    © 2015 - 2016 Devin Gund     | |_| | |_| | \ V / | | | | | | |            "
"    dgund.com                    |____/ \____|  \_/  |_|_| |_| |_|            "
"                                                                              "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (0) Contents
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (1) Plugins
" (2) General
" (3) Colors
" (4) Whitespace
" (5) Interaction
" (6) Searching
" (7) Navigation
" (8) Custom Mappings and Functions


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (1) Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilizes Vundle as a plug-in manager
" http://github.com/gmarik/vundle

" Commands
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to remove

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Configure Vundle to manage itself
Plugin 'gmarik/Vundle.vim'

" Configure fugitive.vim
" Provides a Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Configure matchit.zip
" Provides extended % matching for HTML, LaTeX, and many other languages
Plugin 'vim-scripts/matchit.zip'

" Configure NERD Tree
" Provides a tree structure visualisation of files and directories
Plugin 'scrooloose/nerdtree'

" Configure Solarized
" Provides a precision color scheme for Vim
Plugin 'altercation/vim-colors-solarized'

" Configure vim-airline
" Provides a light status line / tabline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" Configure vim-airline-themes
" Provides customizable themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (2) General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf-8 as standard encoding
set encoding=utf8

" Use unix as the standard file type
set ffs=unix,mac,dos

" Set maximum lines of history stored
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Turn backup and swap off
set nobackup
set nowb
set noswapfile

" Set to read when a file is changed externally
set autoread


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (3) Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set background color
set background=dark

" Set colorscheme
" Requires associated colorscheme files if necessary
colorscheme solarized


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (4) Whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs become spaces
set expandtab

" Enable smart tabbing
set smarttab

" Set tab width to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Set line breaks
set linebreak

" Indentation and wrapping
set autoindent
set smartindent
set wrap

" Load filetype-specific indent files
filetype indent on

" Set indentation for certain filetypes
autocmd Filetype make setlocal noexpandtab
autocmd BufNewFile,BufRead *.c set shiftwidth=4 tabstop=4 softtabstop=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (5) Interaction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set custom map leader for extra key combinations
" ex. <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Set 7 lines to the cursor when moving vertically using j/k
set so=7

" Visual autocomplete for command menu
set wildmenu

" Set wildmenu to ignore compiled files and others
set wildignore=*.o,*~,*.pyc,*/.DS_Store
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Always show the status line
set laststatus=2

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Automatically use system clipboard
set clipboard=unnamed

" Enable mouse in supporting terminal emulators
if has("mouse")
    set mouse=a
endif

" Display more information in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (6) Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" Use smartcase when searching
set smartcase

" Highlight search results
set hlsearch

" Refine search as characters are entered
set incsearch

" No redraw while executing macros
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets for text under cursor
set showmatch

" No error noises or screen flashes
set noerrorbells
set novisualbell
set t_vb=
set tm=500


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (7) Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Map <Space> to / for search
map <space> b

" Map Ctrl-<Space> to ? for backward search
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let <leader>tl toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set showtabline=1
catch
endtry

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember information about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (8) Custom Mappings and Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap Vim 0 to first non-blank character
map 0 ^

" :w! uses fast saving
nmap <leader>w :w!<cr>

" :W (capital w) sudo saves the file
command W w !sudo tee % > /dev/null

" Move a line of text using ALT+[jk] or Comamnd+[jk] on Mac OS
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Delete trailing white space on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Turn off search result highlighting
nnoremap <leader><space> :nohlsearch<CR>

" <leader>ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Spell check shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
