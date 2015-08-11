set nocompatible
filetype off

filetype plugin indent on

set nobackup
set noswapfile

" fix arrow keys so I can't use them
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" make up and down keys work on screen lines instead of file lines
nnoremap j gj
nnoremap k gk

"set ai to terse nowarn sm ruler redraw sw=2 ts=2
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
set ai
set to "timeout for getting commands
set ruler redraw
set expandtab smarttab

set sw=4

set encoding=utf8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set relativenumber


set bs=2
set hls

" q: format comments with 'gq'
" r: auto-insert comment leader on newline
" n: numbered lists
set formatoptions=qrn1

" set a colored mark at 85 columns
set colorcolumn=85

" make searches more perl compatible
nnoremap / /\v
vnoremap / /\v

" all lowercase searches are case-insensitive;
" mixed case searches are sensitive
set ignorecase
set smartcase

" search and replace defaults to /g. Add a /g to turn it off.
set gdefault

" show searches incrementally as we search for them
set incsearch
set showmatch
set hlsearch
" shortcut for noh, <leader>' '
nnoremap <leader><space> :noh<cr>

" bounce between brackets with <TAB>
nnoremap <tab> %
vnoremap <tab> %

" supposed to make vim use the system clipboard
" This is annoying. Turn it off.
" set clipboard=unnamed

" make jj work to get you out of modes
imap jj <Esc>

syntax enable

let g:solarized_termtrans=1
"let g:solarized_contrast  = "light"
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_bold = 0


set background=dark
colorscheme solarized

let mapleader = ','

set wildmenu

au BufNewFile,BufRead *.t set filetype=perl

" make SPACE do a 'next page'
nnoremap <SPACE> <PAGEDOWN>

" turn on block mode (get to it with CTRL-V) virtualedit (no char needed)
set virtualedit=block

" make window nav like tmux
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
