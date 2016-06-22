" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'jelera/vim-javascript-syntax'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-gitgutter'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

" NERDTree
nmap <Leader>b :NERDTreeToggle <CR>

" RainbowParentheses 
nmap <F9> :RainbowParentheses!! <CR>

" color scheme setting
syntax on
"let g:solarized_termcolors=256
"set t_Co=256 
"set background=dark
"colorscheme solarized

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_eslint_generic = 1
let g:syntastic_javascript_eslint_exec = 'xo'
let g:syntastic_javascript_eslint_args = '--reporter=compact'
let g:syntastic_javascript_checkers = ['eslint']

" default setting
set number
set expandtab
set softtabstop=2 
set tabstop=2
set encoding=utf-8
set shiftwidth=2
set smartindent

" shortcut setting
nmap <S-H> :bprev<CR>
nmap <S-L> :bnext<CR>
nmap <S-I> :w<CR>
nmap <F2> :q<CR>
