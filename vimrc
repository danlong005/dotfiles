set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'andlrc/rpgle.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'nikvdp/ejs-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'powerline/fonts'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end() 

syntax on
set background=dark
colorscheme PaperColor
filetype plugin indent on
set smarttab
set autoindent smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set number relativenumber

let NERDTreeShowHidden=1
map \ :NERDTreeToggle<CR>
map \| :NERDTreeToggle<CR>

inoremap jj <Esc>
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

augroup filetypedetect
  au! BufRead,BufNewFile *.rpg          setfiletype rpg
  au! BufRead,BufNewFile *.rpgle        setfiletype rpgle
  au! BufRead,BufNewFile *.clp          setfiletype clp
  au! BufRead,BufNewFile *.dspf         setfiletype dds
  au! BufRead,BufNewFile *.prtf         setfiletype dds
  au! BufRead,BufNewFile *.pf           setfiletype dds
  au! BufRead,BufNewFile *.lf           setfiletype dds
augroup END

au! Syntax rpg          so ~/.vim/bundle/rpgle.vim/syntax/rpg.vim
au! Syntax clp          so ~/.vim/bundle/rpgle.vim/syntax/clp.vim
au! Syntax dds          so ~/.vim/bundle/rpgle.vim/syntax/dds.vim

