set nocompatible
filetype off

set encoding=utf-8 fileencoding=utf-8

let mapleader=","

nmap <leader>l :set list!<CR>
nmap <leader>; :NERDTreeToggle<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

call pathogen#infect()

let g:CommandTMaxFiles=20000
let g:CommandTMaxHeight=10
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>

set ts=4 sts=4 sw=4 expandtab

syntax on
filetype on
filetype plugin indent on

set number
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set guifont=Bitstream\ Vera\ Sans\ Mono:h11
set linespace=4
set cursorline

" GUI
if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
endif

au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
