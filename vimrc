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
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -flo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  " specify a directory for plugins
  " - For Neovim: ~/.local/share/nvim/plugged
  " - avoid using standard vim directory names like 'plugin'
  call plug#begin('~/.local/share/nvim/plugged')
else
  " Install vim-plug for vim classic
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  " specify a directory for plugins
  " - avoid using standard vim directory names like 'plugin'
  call plug#begin('~/.vim/plugged')
endif
"
" ============================
" Add plugs here
" ----------------------------
Plug 'sickill/vim-monokai' " Colorscheme
Plug 'ctrlpvim/ctrlp.vim' " Easy file browsing via Ctrl-P
Plug 'scrooloose/nerdtree' " Atom/Sublime-like file tree
Plug 'Xuyuanp/nerdtree-git-plugin' " git status markers for NERDTree
Plug 'airblade/vim-gitgutter' " git status markers in gutter
Plug 'HerringtonDarkholme/yats.vim' " Yet another TypeScript Syntax Highlighting
Plug 'tpope/vim-fugitive' " Git intergration
Plug 'vim-airline/vim-airline' " v fancy status bar

"
" Async completion for NeoVim via deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  " For async completion
  Plug 'Shougo/deoplete.nvim'
  " For Denite features
  Plug 'Shougo/denite.nvim'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" ----------------------------
"
" Initialize plugin system
call plug#end()

" ENABLE ALL THE THINGS!!!
let g:deoplete#enable_at_startup = 1 " Enable autocomplete
let g:airline#extensions#tabline#enabled = 1 " Enable status bar

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

" Open current document into its own tab (pseudo-fullcsreen)
nnoremap <leader>T :tabnew %<cr>

" Don't linebreak in the middle of a word
set linebreak

" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Faster update time (for vim git gutter)
set updatetime=100

" Set spell check language to english
set spelllang=en

" Buffer Controls
nnoremap <C-b><C-n> :bnext<CR>
nnoremap <C-b><C-p> :bprevious<CR>

" Tab Controls
nnoremap <C-t><C-n> :tabnext<CR>
nnoremap <C-t><C-p> :tabprevious<CR>
nnoremap <C-t><C-t> :tabnew<CR>
nnoremap <C-t><C-w> :tabclose<CR>

" Remove all trailing whitespace
nnoremap <leader>ws :%s/\s\+$//e<cr>
