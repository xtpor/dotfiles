
" by Tintin Ho (holoktin97@gmail.com)

" Start of Plugins -- vim-plug (https://github.com/junegunn/vim-plug)
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

" Language
Plug 'elixir-lang/vim-elixir' " Elixir
Plug 'jdonaldson/vaxe' " Haxe

" End of plugins
call plug#end()

" General Setting
let mapleader = " "
set number " Show line numbers
set ruler " Show row and column of the cursor
set autoindent " Preserves the indentation on new line
set smartindent
set sm " Auto complete brackets
syntax on

" Searching
set hlsearch " Highlight search results
set ignorecase " When doing a search, ignore the case of letters
set smartcase " Override the ignorecase option if the search pattern contains upper case letters

" clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Tabs & Spaces
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab

" Colorscheme
color seoul256

" Key Mappings

" ;; can be used as <ESC>
nnoremap ;; <ESC>
vnoremap ;; <ESC>
inoremap ;; <ESC>

" <ESC> exit terminal mode
tnoremap <ESC> <C-\><C-n>
tnoremap ;; <C-\><C-n>

nnoremap <leader>a :NERDTreeToggle<CR>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>gs :Gstatus<CR>

" Plugin specific configurations

" NERDTree
let loaded_netrwPlugin=1
let NERDTreeRespectWildIgnore=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

