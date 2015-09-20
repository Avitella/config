set ts=2 sw=2 sta et
" set ts=4 sw=4 sta noet
" set ts=4 sw=4 et

map <F9> <ESC>:w<cr>:make -f ~/.vim/template/Makefile %< <cr>
map! <F9> <ESC>:w<cr>:make -f ~/.vim/template/Makefile %< <cr>
map <F5> <ESC>:!time ./%< <cr>
map! <F5> <ESC>:!time ./%< <cr>
