" vimplug for managing plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
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
Plug 'lifepillar/vim-solarized8'
call plug#end()
" End vimplug

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
set t_Co=256
colorscheme solarized8

set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set ruler
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set ttyfast
set mouse=a
set number            " Enable line numbers
set clipboard=unnamed

autocmd StdinReadPre * let s:std_in=1
noremap <tab> <c-w><c-w>
nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" Rainbow colors!
nnoremap <silent> <leader>b :call ToggleRainbow()<CR>
" jk or kj in insert mode to return to normal and save changes 
imap jk <ESC>:w<CR> 
imap kj <ESC>:w<CR>
set tags+=gems.tags
