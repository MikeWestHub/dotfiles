" vimplug for managing plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'duff/vim-scratch'
Plug 'flazz/vim-colorschemes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
" End vimplug

if (has("termguicolors"))
  set termguicolors
endif

if executable('ack')
  " Use ack over grep
  set grepprg=ack\ --nogroup\ --nocolor
endif

set background=dark
set t_Co=256
colorscheme solarized

set number relativenumber

nnoremap <c-p> :FZF<cr>

" Display extra whitespace
set list listchars=tab:\ \ ,trail:·,nbsp:·

set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set smartindent expandtab
set ruler
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set ttyfast
set mouse=a
set number            " Enable line numbers
set clipboard=unnamed
set tags=tags

autocmd StdinReadPre * let s:std_in=1
noremap <tab> <c-w><c-w>
nmap <silent> <C-N> :cn<CR>zv

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
