" =========================================================
" Author : iSayme
" Blig   : www.isayme.org
" Mail   : isaymeorg@gmail.com
" Github : www.github.com/isayme
" =========================================================

" =========================================================
" general configure
" =========================================================

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" bundle start
filetype off                   " required!

filetype plugin indent on     " required!

set backspace=indent,eol,start              " allow backspacing over everything in insert mode

set encoding=utf-8                          " set utf8 as standard encoding and en_US as the standard language
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set ambiwidth=double

set history=1000                            " keep 50 lines of command line history
set ruler                                   " show the cursor position all the time
set showcmd                                 " display incomplete commands

set hlsearch                                " highlight search results
set incsearch                               " do incremental searching

filetype plugin on                          " enable filetype plugins
filetype indent on

syntax enable                               " enable syntax highlighting
syntax on

set nu                                      " show line number

set list
set listchars=tab:>-,trail:-                " show TABs with '>---' if already have TABs

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/                " show space with '-' if there spaces at end of the line.

set tabstop=4                               " tabstop = 4
set softtabstop=4                           " indet = 4
set shiftwidth=4
set smarttab                                " be smart when backspace
set expandtab                               " expand tab with space
autocmd FileType make setlocal noexpandtab  " makefile not expand tab with spaces

set ai                                      " auto indet
set si                                      " smart indent
set cindent                                 " do c-style indenting
set cino=:0g0t0(sus                         " indent for c/c++ language

set cursorline                              " cursor line highlight

set showmatch                               " highlight the match bracket

colorscheme desert                          " use color scheme desert

" remember last cursor position
autocmd BufReadPost *
        \ if line("'\"")>0&&line("'\"")<=line("$") |
        \   exe "normal g'\"" |
        \ endif

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
