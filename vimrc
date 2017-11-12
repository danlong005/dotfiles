set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'leafgarland/typescript-vim'
Plugin 'spf13/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
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
set nocursorline

if $term =~ '256color'
  set t_co=256
elseif $term =~ '^term$'
  set t_co=256
endif

map <silent> <C-\> :NERDTreeToggle<CR>

inoremap jj <Esc>
