" Configuration for neovim by Tintin Ho (holoktin97@gmail.com)

" vim-plug (https://github.com/junegunn/vim-plug)
" Start of Plugins
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
Plug 'psliwka/vim-smoothie' " Smooth scrolling

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'dense-analysis/ale' " Linting & LSP support

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'

" Language
Plug 'elixir-lang/vim-elixir' " Elixir
Plug 'jdonaldson/vaxe' " Haxe
Plug 'dag/vim-fish' " fish script
Plug 'elmcast/elm-vim' " Elm

" End of plugins
call plug#end()


" Use deoplete
let g:deoplete#enable_at_startup = 1

" Use ALE as completion sources for all code.
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})

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
set tabstop=2 shiftwidth=2 expandtab

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
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mouse support
set mouse=a

" Ale elixir-ls config
let g:ale_linters = {'elixir': ['elixir-ls', 'mix']}
let g:ale_elixir_elixir_ls_release = expand('~/.share/elixir-ls-1.11')
