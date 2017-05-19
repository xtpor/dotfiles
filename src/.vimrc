" Vim configuration file by Tintin Ho
" Please save this file as .vimrc in your home directory. (e.g. /home/user/.vimrc)
set nocompatible
filetype on
filetype off


" --- Vundle Settings ---

" Initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Bundle 'gmarik/vundle'

" Vim bundles install here
" Color scheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'phd'
Bundle 'Guardian'
Bundle 'twilight'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Color-Scheme-Explorer'
Bundle 'endel/vim-github-colorscheme'

" JS
Bundle 'wookiehangover/jshint.vim'
" Bundle 'pangloss/vim-javascript'

" Ruby
Bundle 'vim-ruby/vim-ruby'

" Coffee script
Bundle 'kchmck/vim-coffee-script'
Bundle 'jwhitley/vim-literate-coffeescript'

" Rust
Bundle 'rust-lang/rust.vim'

" Python's
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi'
Bundle 'davidhalter/jedi-vim'

" General
Bundle 'Lokaltog/vim-powerline'
Bundle 'easymotion/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'itchyny/calendar.vim'
Bundle 'jiangmiao/auto-pairs'
" Bundle 'lrvick/Conque-Shell'
" Bundle 'Conque-Shell'
Bundle 'guozhaohui/conque'
 

filetype plugin indent on


" --- General Settings ---

" set leader key
let mapleader = ','

set number		   " Show line numbers
set ruler          " Show the line and column number of the cursor position

" indentation
set autoindent	   " Copy indent from current line when starting a new line
set smartindent	   " Do smart indenting when starting a new line. Works with supported c-like languages

" searching
set hlsearch	   " Highlight search results
set ignorecase	   " When doing a search, ignore the case of letters
set smartcase	   " Override the ignorecase option if the search pattern contains upper case letters

syntax on          " auto highlight syntax
"syntax enable

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>

"-- Tweaks --
"Add tweak for better backspace support
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab

" colorscheme settings
set background=dark
" colorscheme solarized
colorscheme jellybeans
" colorscheme twilight

" font & size settings
":set guifont=Menlo\ Bold:h13
:set guifont=PT\ Mono\ Bold:h13

" encoding
set encoding=utf-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" <F1> ~ <F9> mapping
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :ConqueTerm bash<CR>
nnoremap <F4> :w<CR>:!gcc % -o %:r<CR>:!./%:r<CR>
nnoremap <F5> :w<CR>:!kivy %<CR>
nnoremap <F6> :w<CR>:!python -i %<CR>
nnoremap <F7> :w<CR>:!python %<CR>
nnoremap <F8> :w<CR>:!kivy %<CR>
nnoremap <F9> :Calendar<CR>

" column ruler
set colorcolumn=80

" auto complete ( [ {
set sm

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

" // can be used to autocomplete
inoremap // <C-P>

" --- Plugin Specific Settings --- 

" NerdTree mapping
let NERDChristmasTree=1

" Tagbar mapping

" Plugin python-mode related
let g:pymode=1
let g:pymode_trim_whitespaces=1
let g:pymode_indent=1
let g:pymode_folding=1
let g:pymode_motion=1
let g:pymode_doc=0
let g:pymode_rope=0
let g:pymode_run=0

let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 1

" Plugin jedi mappings
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Plugin for jslint
let JSHintUpdateWriteOnly=1

" Plugin vim-javascript
let g:javascript_conceal_this = "@"

" Plugin coffeescript
autocmd FileType coffee.md runtime ftplugin/coffee.vim

" Plugin Rust
autocmd BufNewFile,BufRead *.rs set filetype=rust
