set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'

call vundle#end() 

syntax on
colorscheme molokai
filetype plugin indent on
set smarttab
set autoindent smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set number

set t_co=256

map \ :NERDTreeToggle<CR>
map \|:NERDTreeToggle<CR>

inoremap jj <Esc>
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
