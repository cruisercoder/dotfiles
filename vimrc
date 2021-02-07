syntax on

set expandtab
set tabstop=2

call plug#begin()
Plug 'https://github.com/rhysd/vim-clang-format'
Plug 'https://github.com/yegappan/mru'
call plug#end()

nnoremap <Space> :update<bar>:MRU<cr>

