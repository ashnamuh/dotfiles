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
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-gitgutter'
"Plugin 'vim-es6'
"Plugin 'vim-javascript'
call vundle#end()
filetype plugin indent on

"colorscheme Monokai

" auto open Nerd Tree when there was no file on the command line
function! StartUp()
  if 0 == argc()
    NERDTree
    vertical resize 25
  end
endfunction

" NERDTree setting
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', 'node_modules$']
autocmd VimEnter * call StartUp()

" ctrlp setting
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

                        
" basic settings
set number
highlight LineNr term=bold cterm=NONE ctermfg=lightgray ctermbg=NONE
set expandtab
set softtabstop=2 
set tabstop=2
set encoding=utf-8
