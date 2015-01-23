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
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-ruby/vim-ruby'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'suan/vim-instant-markdown'
Bundle 'mattn/emmet-vim'
Bundle 'jaapie/vim-colours-dusk'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'slim-template/vim-slim'
Bundle 'jgdavey/tslime.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'digitaltoad/vim-jade'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'heartsentwined/vim-emblem'
Bundle 'danro/rename.vim'
Bundle 'tpope/vim-commentary'
Bundle 'Keithbsmiley/swift.vim'

" Bundles required for snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'rcyrus/snipmate-snippets-rubymotion'

filetype plugin indent on
