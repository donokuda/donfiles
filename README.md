••• donfiles •••
================

*My dotfiles*

-------------------------------

### My Current Configurations ###
* tmux
  * Plugins are checked in as git submodules. Be sure to run
  `git submodule init` and `git submodule update` to load them
* zsh
  * rbenv / ruby-build
* vim
  * Vundle for plugin management (See `vimrc` for installed plugins)

### Some "interesting" notes ###
I'm in the process of setting up a boxen for my automating my dev environment. However, I need OSX Mountain Lion for this.

I currently use RVM on my work computer and just recently switched to rbenv/ruby-build to manage my rubies
http://robots.thoughtbot.com/post/47273164981/using-rbenv-to-manage-rubies-and-gems

Ruby 2.0.0 doesn't build correctly (this is a ruby bug.) The fix is here:
https://github.com/sstephenson/ruby-build/issues/309

### Some interesting articles ###
[Vim and tmux on OSX](http://rhnh.net/2011/08/20/vim-and-tmux-on-osx)

[A Tmux Crash Course](http://robots.thoughtbot.com/post/2641409235/a-tmux-crash-course)
