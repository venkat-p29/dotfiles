set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
"set ignorecase=true
"set smartcase=true
syntax on

" mappings
nnoremap <C-l> :nohlsearch<CR>
inoremap jj <Esc>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

" Change cursor to thin line on insert
let &t_SI = "\<Esc>[6 q"
" Change cursor to block on normal mode
let &t_EI = "\<Esc>[2 q"
" Change cursor to block on replace mode
let &t_SR = "\<Esc>[2 q"
