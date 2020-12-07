set encoding=UTF-8
set nocompatible 
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  Plugin 'alvan/vim-closetag'
  Plugin 'andlrc/rpgle.vim'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'kien/ctrlp.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'mxw/vim-jsx'
  Plugin 'nikvdp/ejs-syntax'
  Plugin 'pangloss/vim-javascript'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'sainnhe/gruvbox-material'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-fugitive'

  Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end() 

syntax on
set background=dark
filetype plugin indent on
set smarttab
set autoindent smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set number 
colorscheme gruvbox-material

let NERDTreeShowHidden=1
map \ :NERDTreeToggle<CR>
map \| :NERDTreeToggle<CR>

inoremap jj <Esc>

augroup filetypedetect
  au! BufRead,BufNewFile *.rpg          setfiletype rpg
  au! BufRead,BufNewFile *.rpgle        setfiletype rpgle
  au! BufRead,BufNewFile *.sqlrpgle     setfiletype rpgle
  au! BufRead,BufNewFile *.clp          setfiletype clp
  au! BufRead,BufNewFile *.clle         setfiletype clp
  au! BufRead,BufNewFile *.dspf         setfiletype dds
  au! BufRead,BufNewFile *.prtf         setfiletype dds
  au! BufRead,BufNewFile *.pf           setfiletype dds
  au! BufRead,BufNewFile *.lf           setfiletype dds
augroup END

au! Syntax rpg          so ~/.config/nvim/bundle/rpgle.vim/syntax/rpg.vim
au! Syntax clp          so ~/.config/nvim/bundle/rpgle.vim/syntax/clp.vim
au! Syntax dds          so ~/.config/nvim/bundle/rpgle.vim/syntax/dds.vim

