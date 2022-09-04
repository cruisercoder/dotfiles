"nnoremap ,f :ClangFormat<cr>

"very simplistic setup at moment, will add setup detection 
"nnoremap ,b :set makeprg=g++\ %<.cc\ -o\ %< <cr>:make<cr>:cwindow<cr>
"nnoremap ,r :execute ':!./%<'<cr>

"ninja bindings WIP
let ninja_out_dir=$MODE
let ninja_build_target = ''
let &makeprg='ninja -C out/'.ninja_out_dir.' '.ninja_build_target
nnoremap ,b :make<cr>:cwindow<cr>

