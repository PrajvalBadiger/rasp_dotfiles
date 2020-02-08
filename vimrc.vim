"Vundle setup   
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"One dark colorscheme
Plugin 'https://github.com/joshdick/onedark.vim.git'
"Alduin colorscheme
Plugin 'https://github.com/AlessandroYorba/Alduin'
"pep8-indent
Plugin 'Vimjas/vim-python-pep8-indent'
"NERDTree
Plugin 'scrooloose/nerdtree'
"python mode plugin
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"ctrlP fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nu 
set rnu

"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"syntax highlight on 
syntax on
colorscheme onedark
" map leader key to ","
let mapleader = ","

"easy quit maps
map <leader>q :quit<CR>  
map <leader>E :qa!<CR>

" source the current file 
noremap <leader>so :source %<CR> 

" map ctrl+z to save the file 
noremap <C-z> :w<CR>
inoremap <C-z> <Esc>:w<CR><Insert>

"save as sudo
ca w!! w !sudo tee "%"
"bind move the windows around
map <leader>s <c-w>s
map <leader>" <c-w>v
map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>l <c-w>l
map <leader>k <c-w>k

"tab navigation mappings
map <leader>t :tabnew<CR>
map <leader>n :tabprevious<CR>
map <leader>m :tabnext<CR>

"easier moving block of code
vnoremap < <gv
vnoremap > >gv

"tabs and spacing handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set nowrap
set colorcolumn=80
set history=700
set undoreload=700

"backup and swapfiles
set nobackup
set nowritebackup
set swapfile 

"always show status bar 
set ls=2

"incremental scearch and highlighted search result
set incsearch
set hlsearch
set clipboard=unnamed


"NerdTree mapp
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
