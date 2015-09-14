set nocompatible

if has("syntax")
	syntax on
endif

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

set autowrite
set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r
set ignorecase
set mouse=a
set number
set rtp+=~/.vim/bundle/Vundle.vim
set smartcase
set tags=./tags;/
set ts=4 sw=4 noet si
set wrap
set background=dark

filetype off

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'wombat256.vim'
Plugin 'Tagbar'
call vundle#end()

filetype plugin indent on

map <F5> <ESC>:!./%<cr>
map <F3> <ESC>:!ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .<cr>:set tags=./tags;/<cr>
map <F2> <ESC>:TagbarToggle<cr>

nnoremap gr :grep --exclude tags '\b<cword>\b' *<CR>:copen<cr>

au BufRead,BufNewFile SConstruct setfiletype python

if filereadable("SConstruct")
	set makeprg=scons
endif

colorscheme wombat256mod
" colorscheme solarized
