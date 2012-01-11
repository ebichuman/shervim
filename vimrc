set nocompatible
filetype off

set encoding=utf-8 fileencoding=utf-8

let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

nmap <leader>; :NERDTreeToggle<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

call pathogen#infect()

syntax on
filetype on
filetype plugin indent on

set ts=4 sts=4 sw=4 expandtab

set number

" GUI
if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
    set guifont=Bitstream\ Vera\ Sans\ Mono:h11
    set linespace=4
    set background=dark
    set cursorline
    colorscheme railscasts
endif

au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
