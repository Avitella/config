set nocompatible

if has("syntax")
	syntax on
endif

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

set autochdir
set autowrite
set background=dark
set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r
set ignorecase
set mouse=a
set nowrap
set number
set rtp+=~/.vim/bundle/Vundle.vim
set ruler
set smartcase
set tags=./tags;/
set ts=4 sw=4 noet si

filetype off

call vundle#begin()
Plugin 'Tagbar'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wombat256.vim'
call vundle#end()

filetype plugin indent on

map <F2> <ESC>:TagbarToggle<cr>
map <F3> <ESC>:!ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .<cr>:set tags=./tags;/<cr>
map <F5> <ESC>:!./%<cr>

nnoremap gr :grep --exclude tags '\b<cword>\b' *<CR>:copen<cr>

au BufRead,BufNewFile SConstruct setfiletype python
au BufRead,BufNewFile SConscript setfiletype python
au BufRead,BufNewFile *.proto setfiletype proto

if filereadable("SConstruct")
	set makeprg=scons
endif

colorscheme wombat256mod
" colorscheme solarized

hi Error NONE
