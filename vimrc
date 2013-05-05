"""""""""""""""""""""""""""""""""
" Vundle stuff. For more info go to:
" https://github.com/gmarik/vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'b4winckler/vim-objc'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on
""""""""""""""""""""""""""""""""

" For Powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols  = 'fancy' " fancy icons

set hlsearch " turn on search highlighting
syntax on
set t_Co=256 " set terminal colors to 256
colorscheme molokai
set number " turn on line numbers
set tabstop=2
set shiftwidth=2
set expandtab
set ruler " show line and column numbers
set backspace=indent,eol,start " be able to delete invisible stuff

set smartindent
set autoindent
filetype indent on

" Syntax highlighting for specific files
au! BufNewFile,BufRead Rakefile,Guardfile,*.mirah,*.ru set filetype=ruby
au! BufNewFile,BufRead *.md set filetype=markdown

" map :W and :Q to its lowercase equivalent
command W w
command Q q

" Trailing whitespace
highlight TrailingWhitespace ctermbg=red guibg=red
autocmd WinEnter * match TrailingWhitespace /\s\+$/

"" Leader Mappings """"""""""""""
let mapleader = ","
nnoremap <leader>r :call ToggleRelativeLineNumbers()<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Grab contents from line and paste above/below cursor
nnoremap <leader>b yy2Pi-webkit-jI-moz-j
" Grab contents from line and paste above/below cursor
nnoremap <leader>p Gyyp
nnoremap <leader>P GyyP

" Rspec.vim mappings
map <leader>t :call RunCurrentSpecFile()<cr>
map <leader>s :call RunNearestSpec()<cr>
map <leader>l :call RunLastSpec()<cr>

"" Custom Functions """"""""""""""
function! ToggleRelativeLineNumbers()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
