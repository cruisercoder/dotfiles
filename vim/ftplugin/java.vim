" java
"nnoremap ,f :ClangFormat<cr>

nnoremap ,b :set makeprg=javac\ -cp\ *.jar:.\ *.java\ %<cr>:make<cr>:cwindow<cr>

nnoremap ,r :execute ':!java -cp *.jar:. %:t:r'<cr>

