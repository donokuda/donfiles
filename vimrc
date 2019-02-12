" Quick note for symlinking vimrc's: 
"
" In order to symlink vimrc files, you might provide the absolute path.
" (See https://superuser.com/questions/422473/vim-doesnt-load-symlinked-vimrc)
"   $ ln -s ~/code/src/github.com/donokuda/donfiles/vimrc ~/.vimrc
"
" +----------------------+
" |    Set up plugins    |
" +----------------------+
" Automatically install vim-plug:
"   https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
"
" Install vim-plug for neovim
"   https://neovim.io/doc/user/nvim.html#nvim-from-vim
" 
if has('nvim')
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd vimenter * pluginstall --sync | source $myvimrc
  endif

  " specify a directory for plugins
  " - For Neovim: ~/.local/share/nvim/plugged
  " - avoid using standard vim directory names like 'plugin'
  call plug#begin('~/.vim/plugged')
endif
"
" Install vim-plug for vim classic
if !has('nvim')
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd vimenter * pluginstall --sync | source $myvimrc
  endif

  " specify a directory for plugins
  " - avoid using standard vim directory names like 'plugin'
  call plug#begin('~/.vim/plugged')
endif
"
" Add plugs here
Plug 'sickill/vim-monokai' " Colorscheme
Plug 'leafgarland/typescript-vim' " TypeScript support
"
" Initialize plugin system
call plug#end()


" +-----------------------+
" |    Customize here!    |
" +-----------------------+

" Colorscheme
syntax enable
colorscheme monokai

" turn on search highlighting
set hlsearch
syntax on

" set terminal colors to 256
set t_Co=256

" turn on line numbers
set number

set tabstop=2
set shiftwidth=2
set expandtab
set ruler " show line and column numbers
set backspace=indent,eol,start " be able to delete invisible stuff

set smartindent
set autoindent
filetype indent on

" Syntax highlighting for specific files
au! BufNewFile,BufRead Rakefile,Guardfile,*.mirah,*.ru,*.pp set syn=ruby
au! BufNewFile,BufRead *.md set syn=markdown
au! BufNewFile,BufRead *.rg set syn=clojure
au! BufNewFile,BufRead *.hbs,*.handlebars set syn=html
au! BufNewFile,BufRead *.emblem set syn=slim

" map :W and :Q to its lowercase equivalent
command W w
command Q q

" Trailing whitespace
highlight TrailingWhitespace ctermbg=red guibg=red
autocmd WinEnter * match TrailingWhitespace /\s\+$/

" Set leader key to comma
let mapleader = ","

" Show relative numbers (for better jumping experience in vim)
nnoremap <leader>r :set relativenumber!<cr>
 
" Load changes from vimrc without having to restart vim
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggle line wrapping
nnoremap <leader>w :set wrap!<cr>
