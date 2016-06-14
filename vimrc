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
Plugin 'solarized'
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

syntax enable
let g:solarized_termcolors=256 

" airline setting
let g:airline_symbols = {}
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1

" gitgutter setting
let g:gitgutter_signs = 0

" basic settings
set number
highlight LineNr term=bold cterm=NONE ctermfg=lightgray ctermbg=NONE
set expandtab
set softtabstop=2 
set tabstop=2
set encoding=utf-8
nmap <S-H> :bprev<CR>
nmap <S-L> :bnext<CR>
nmap <S-I> :w<CR>
nmap <F2> :q<CR>
" insert mode schortcuts
imap <C-L> <right>
imap <C-H> <left>
imap <C-J> <down>
imap <C-K> <up>
" window shortcuts
nmap <F3> :split <CR>
nmap <F4> :vsplit <CR>
nmap <F5> :vertical resize -1<CR>
nmap <F6> :vertical resize +1<CR>
nmap <F7> :resize -1<cr>
nmap <F8> :resize +1<cr>
