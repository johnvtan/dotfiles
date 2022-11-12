" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sainnhe/sonokai'

Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()

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
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on

" use gruvbox dark theme
colorscheme sonokai
set background=dark
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

autocmd BufWritePre * :%s/\s\+$//e

nnoremap gd :YcmCompleter GoToDefinition<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

nnoremap :W<CR> :w<CR>
nnoremap :Wa<CR> :wa<CR>
nnoremap :WA<CR> :wa<CR>
nnoremap :Q<CR> :q<CR>
nnoremap :WQ<CR> :wq<CR>
nnoremap :Wq<CR> :wq<CR>
