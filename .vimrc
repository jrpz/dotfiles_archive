" VIM Config
"
" TODO/Learn:
" - toggle invisibles

set number
set nocompatible  " be iMproved, required
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set term=xterm-256color
set encoding=utf-8

filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" START PLUGIN ENTRY
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mileszs/ack.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-capslock'
Plugin 'moll/vim-node'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'w0rp/ale'
Plugin 'chrisbra/NrrwRgn'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'valloric/youcompleteme'
Plugin 'wikitopian/hardmode'
Plugin 'ayu-theme/ayu-vim'
Plugin 'roosta/srcery'
Plugin 'itchyny/lightline.vim'
Plugin 'alampros/vim-styled-jsx'
Plugin 'connorholyday/vim-snazzy'
" Plugin 'kbarrette/mediummode'
" END PLUGIN ENTRY
"
" All of your Plugins must be added before the following line
call vundle#end()            " required

" ALE
let &runtimepath.=',~/.vim/bundle/ale'
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

filetype plugin indent on    " required
silent! helptags ALL

" Stuff
let mapleader = "\<Space>"
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
let NERDSpaceDelims=1
let NERDTreeMinimalUI=1

" Insert new line
map <S-Enter> o<ESC>

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Numbers
set number
set numberwidth=4

" Syntax & color scheme
syntax enable
syntax on

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" CtrlP ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" let g:indentLine_loaded = 1
let g:indentLine_setColors = 1
" let g:indentLine_color_term = 238
" let g:indentLine_conceallevel = 1
" set conceallevel=0
let g:indentLine_car = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1

" Linting and code
autocmd FileType javascript set formatprg=prettier\ --stdin

" Format on save
" autocmd BufWritePre *.js :normal gggqG
" Restore positions
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
"
" Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --colum'

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

let g:lightline.tabline = {
      \ 'left': [ ['tabs'] ],
      \ 'right': [ ['close'] ] }

" Colors
" set termguicolors
" let ayucolor="dark"
" let ayucolor="mirage"
" colorscheme neuromancer
" colorscheme srcery
" colorscheme Monokai

" JSX
let g:jsx_ext_required = 0
