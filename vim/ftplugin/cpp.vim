nnoremap ,f :ClangFormat<cr>

"very simplistic setup at moment, will add setup detection 
nnoremap ,b :set makeprg=g++\ %<.cc\ -o\ %< <cr>:make<cr>:cwindow<cr>

nnoremap ,r :execute ':!./%<'<cr>

