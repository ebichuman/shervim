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
    set guifont=Bitstream\ Vera\ Sans\ Mono:h13
    set linespace=4
    set background=dark
    set cursorline
    colorscheme railscasts
endif

au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab

"snipmate setup
try
  source ~/.vim/snippets/support_functions.vim
catch
  source ~/vimfiles/snippets/support_functions.vim
endtry
autocmd vimenter * call s:SetupSnippets()
function! s:SetupSnippets()

    "if we're in a rails env then read in the rails snippets
    if filereadable("./config/environment.rb")
      try
        call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
      catch
        call ExtractSnips("~/vimfiles/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/vimfiles/snippets/eruby-rails", "eruby")
      endtry
    endif

    try
      call ExtractSnips("~/.vim/snippets/html", "eruby")
      call ExtractSnips("~/.vim/snippets/html", "xhtml")
      call ExtractSnips("~/.vim/snippets/html", "php")
    catch
      call ExtractSnips("~/vimfiles/snippets/html", "eruby")
      call ExtractSnips("~/vimfiles/snippets/html", "xhtml")
      call ExtractSnips("~/vimfiles/snippets/html", "php")
    endtry
endfunction
