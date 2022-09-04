syntax on

set expandtab
set tabstop=2

map <C-P> :bp<cr>
map <C-N> :bn<cr>

map <C-J> <C-W>j
map <C-K> <C-W>k

call plug#begin()
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'https://github.com/rhysd/vim-clang-format'
Plug 'https://github.com/yegappan/mru'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/mindriot101/vim-yapf'
Plug 'https://gn.googlesource.com/gn', { 'rtp': 'misc/vim' }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
call plug#end()

nnoremap <Space> :update<bar>:MRU<cr>

nnoremap ,f :FormatCode<cr>

" turn off annoying bells when sound is not muted
set belloff=all

" do not want to set path to .,** as it will be too slow
" instead read from local settings

" Source a local vimrc
let $MYLOCALVIMRC = $HOME . "/.local.vim"
if filereadable($MYLOCALVIMRC)
  " echo 'loading local'
  source $MYLOCALVIMRC
endif
