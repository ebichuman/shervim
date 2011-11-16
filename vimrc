set nocompatible
filetype off

set encoding=utf-8 fileencoding=utf-8

let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
  
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

call pathogen#infect()
syntax on
filetype plugin indent on

set ts=4 sts=4 st=4 expandtab

set number
