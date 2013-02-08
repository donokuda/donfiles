"""""""""""""""""""""""""""""""""
" Vundle stuff. For more info go to:
" https://github.com/gmarik/vundle
 
set nocompatible
filetype off
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
Bundle 'gmarik/vundle'
 
" Insert my bundles here:
"
" github bundles here
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'scrooloose/nerdtree'

Bundle 'tomasr/molokai'

Bundle 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
 
filetype plugin indent on
""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
colorscheme molokai
set number " turn on line numbers
inoremap jj <Esc> " map jj to escape
filetype indent off
set tabstop=2
set shiftwidth=2
set expandtab

" Syntax highlighting for specific files
au! BufNewFile,BufRead Rakefile set filetype=ruby
au! BufNewFile,BufRead Guardfile set filetype=ruby

