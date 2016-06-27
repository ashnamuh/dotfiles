" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'jelera/vim-javascript-syntax'
Plug 'kien/ctrlp.vim'
Plug 'raimondi/delimitmate'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

" airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

" ctrlp setting
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'],
    \ 2: ['.ctrlp', 'bash -c "cd %s && git ls-files -co --exclude-standard"'],
    \ },
  \ }

" supertab setting
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree
noremap <Leader>b :NERDTreeToggle <CR>

" RainbowParentheses 
noremap <F9> :RainbowParentheses!! <CR>

" gitgutter setting
let g:gitgutter_signs = 0

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

" enable HJKL in insert mode
inoremap <C-L> <right>
inoremap <C-H> <left>
inoremap <C-J> <down>
inoremap <C-K> <up>

" disable arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap <S-Up> <NOP>
noremap <S-Down> <NOP>
noremap <S-Left> <NOP>
noremap <S-Right> <NOP>
inoremap <S-Up> <NOP>
inoremap <S-Down> <NOP>
inoremap <S-Left> <NOP>
inoremap <S-Right> <NOP>

" moving buffer shortcut
noremap <S-H> :bprev<CR>
noremap <S-L> :bnext<CR>

" shortcut setting
noremap <S-H> :bprev<CR>
noremap <S-L> :bnext<CR>
noremap <S-I> :w<CR>
noremap <F2> :q<CR>

" window shortcuts
noremap <F3> :split <CR>
noremap <F4> :vsplit <CR>
noremap <F5> :vertical resize -1<CR>
noremap <F6> :vertical resize +1<CR>
noremap <F7> :resize -1<cr>
noremap <F8> :resize +1<cr>
