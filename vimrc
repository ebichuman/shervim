set nocompatible
filetype off

set encoding=utf-8 fileencoding=utf-8

let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
  
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set ts=4 sts=4 sw=4 expandtab

set number
colorscheme railscasts2

" GUI "
if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
    set guifont=Bitstream\ Vera\ Sans\ Mono:h11
    set linespace=3
endif
