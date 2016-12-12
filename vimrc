set nocompatible              " be iMproved, required
filetype off                  " required

set t_Co=256
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'                       " Use ag for searching
Plugin 'ctrlpvim/ctrlp.vim'                 " Ctrl+P fuzzy file searcher
Plugin 'tpope/vim-rails'                    " All kinds of rails things
Plugin 'jeffkreeftmeijer/vim-numbertoggle'  " Automatically toggle between relative and absolute line numers
Plugin 'tpope/vim-surround'                 " Change surrounding parentheses/quotations/etc
Plugin 'tpope/vim-endwise'                  " Automatically close structures
Plugin 'jiangmiao/auto-pairs'               " Automatically insert or delete parens/quotes in pairs
Plugin 'ngmy/vim-rubocop'                   " Rubocop!
Plugin 'scrooloose/nerdtree'                " File browser
Plugin 'wincent/vim-clipper'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntax highlighting
syntax enable
filetype plugin indent on

" Use silver_searcher
set runtimepath^=~/.vim/bundle/ag

" Set tabs to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start    
set ignorecase smartcase
set gdefault                     

" NERDTree Shortcut
map <C-b> :NERDTreeToggle<CR>

" Configure CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Configure status line
set laststatus=2

" Style vim and plugins
colorscheme desert
set background=dark

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects.gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Always show at least 5 lines above/below cursor
set scrolloff=5

" Enable cursorline
let g:conoline_auto_enable = 1
let g:conoline_color_normal_dark = 'ctermbg=23 ctermfg=white'
let g:conoline_color_insert_dark = 'ctermbg=30 ctermfg=white'

" Enable Tab and Shift+Tab to indent/unindent code
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Configure ctrlspace
if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
nnoremap <silent><C-p> :CtrlSpace O<CR>

" Use space as leader
let mapleader = "\<Space>"
  
" Spec runner
noremap <leader>r :!rspec %
noremap <leader>f :!FEATURES=true rspec %

" Rubocop auto-correct
noremap <leader>= :!rubocop --auto-correct %

" Use 0 to jump to the first non-whitespace character in a line
 nmap 0 ^

" jk or kj in insert mode to return to normal and save changes 
imap jk <ESC>:w<CR> 
imap kj <ESC>:w<CR> 


"Ruby is new, and sometimes funtimes
au BufRead,BufNewFile Vagrantfile, Gemfile, Guardfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile .pryrc set filetype=ruby

" Insert pry or remote-pry
nmap <leader>bp orequire 'pry'; binding.pry<esc>^
nmap <leader>brp orequire 'pry'; binding.remote_pry<esc>^

" Show menu for command completion with tab
set wildmenu
set wildmode=list:longest,full

" I should feel bad about this
set mouse=a
