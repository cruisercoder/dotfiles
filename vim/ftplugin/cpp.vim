"nnoremap ,f :ClangFormat<cr>

"very simplistic setup at moment, will add setup detection 
"nnoremap ,b :set makeprg=g++\ %<.cc\ -o\ %< <cr>:make<cr>:cwindow<cr>
"nnoremap ,r :execute ':!./%<'<cr>

let ninja_out_dir=$OUT
let ninja_build_target=''
let &makeprg='ninja -C '.ninja_out_dir.' '.ninja_build_target
"echo 'OUT: '.ninja_out_dir
"echo 'MAKEPRG: '.&makeprg
nnoremap ,b :make<cr>:cwindow<cr>


