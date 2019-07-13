set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" gruvbox color theme
Plugin 'morhetz/gruvbox'

" rust plugin
Plugin 'rust-lang/rust.vim'

" code completion
" Plugin 'valloric/youcompleteme'
Plugin 'ajh17/VimCompletesMe'

" auto pairing braces
Plugin 'jiangmiao/auto-pairs'

" Doing stuff with surrounding chars
Plugin 'tpope/vim-surround'

Plugin 'francoiscabrol/ranger.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" Taken from https://gist.github.com/rocarvaj/2513367
" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on

" use gruvbox dark theme
colorscheme gruvbox 
set background=dark
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" remap ctrl T for new tab
noremap <C-t> :tabnew<CR>:Ranger<CR>
noremap <C-l> :tabnext<CR>
noremap <C-h> :tabprevious<CR>
