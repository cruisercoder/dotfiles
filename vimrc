syntax on

set expandtab
set tabstop=2

" quick buffer movement (TODO: move to hljk)
map <C-P> :bp<cr>
map <C-N> :bn<cr>

" quick window/split movement
map <C-J> <C-W>j
map <C-K> <C-W>k

" move block up/down
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set ignorecase
set smartcase


"set number
"set relativenumber

"autocmd BufEnter * silent! normal! g`"
"set nostartofline

call plug#begin()
Plug 'vim-scripts/a.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'https://github.com/rhysd/vim-clang-format'
Plug 'https://github.com/yegappan/mru'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/mindriot101/vim-yapf'
Plug 'https://gn.googlesource.com/gn', { 'rtp': 'misc/vim' }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

nnoremap <Space> :update<bar>:MRU<cr>

"nnoremap <C-Space> i
"inoremap <C-Space> :update<bar>:FZF<cr>

nnoremap ,f :FormatCode<cr>
nnoremap ,s :FZF<cr>

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

let $FZF_DEFAULT_COMMAND='rg --files --hidden'

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
"let g:tokyonight_enable_italic = 0

colorscheme tokyonight


