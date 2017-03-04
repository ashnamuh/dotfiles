set number
set expandtab
set softtabstop=2
set tabstop=2
set encoding=utf-8
set shiftwidth=2
set smartindent

syntax on

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
