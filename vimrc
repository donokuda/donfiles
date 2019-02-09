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
Plug 'sickill/vim-monokai'
"
" Initialize plugin system
call plug#end()

" +--------------------+
" |  THE COLORS, DUKE  |
" +--------------------+
syntax enable
colorscheme monokai
