set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'The-NERD-Tree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlp.vim'
Plugin 'vim-javascript-syntax'
Plugin 'supertab'
"Plugin 'vim-airline'
"Plugin 'vim-es6'
"Plugin 'vim-javascript'
call vundle#end()
filetype plugin indent on

"colorscheme Monokai

" basic settings
set number
set expandtab
set softtabstop=2 
set tabstop=2
set encoding=utf-8
