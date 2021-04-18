syntax on

set expandtab
set tabstop=2

map <C-P> :bp<cr>
map <C-N> :bn<cr>

map <C-J> <C-W>j
map <C-K> <C-W>k

set path=.,**

"set tags=./ tags

call plug#begin()
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'https://github.com/rhysd/vim-clang-format'
Plug 'https://github.com/yegappan/mru'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/mindriot101/vim-yapf'
Plug 'https://gn.googlesource.com/gn', { 'rtp': 'misc/vim' }
call plug#end()

nnoremap <Space> :update<bar>:MRU<cr>

nnoremap ,f :FormatCode<cr>

