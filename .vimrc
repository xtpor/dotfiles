" Vim configuration file by Tintin Ho
" Please save this file as .vimrc in your home directory. (e.g. /home/user/.vimrc)
set nocompatible
filetype on
filetype off

" vim-plug (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" General
Plug 'tpope/vim-fugitive' " Git integration
Plug 'scrooloose/nerdtree' " Tree view
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline' " Status line
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'octref/rootignore'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'ajh17/spacegray.vim'

" Language
Plug 'elixir-lang/vim-elixir'
Plug 'jdonaldson/vaxe'

call plug#end()


" --- General Settings ---
filetype plugin indent on

" set leader key
let mapleader = ' '

set number		   " Show line numbers
set ruler          " Show the line and column number of the cursor position
set colorcolumn=80 " column ruler
set sm             " auto complete ( [ {

" indentation
set autoindent	   " Copy indent from current line when starting a new line
set smartindent	   " Do smart indenting when starting a new line. Works with supported c-like languages

" searching
set hlsearch	   " Highlight search results
set ignorecase	   " When doing a search, ignore the case of letters
set smartcase	   " Override the ignorecase option if the search pattern contains upper case letters

syntax on          " auto highlight syntax

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>

"-- Tweaks --
"Add tweak for better backspace support
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab

" colorscheme settings
set background=dark
colorscheme onedark

" font & size settings
:set guifont=Space\ Mono\ Bold:h13

" encoding
set encoding=utf-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" ;; can be used as esc key
nnoremap ;; <ESC>
vnoremap ;; <ESC>
inoremap ;; <ESC>

" No scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" map :E to :Explore
command! E Explore

" custom key mappings
nnoremap <leader>a :NERDTreeToggle<CR>
