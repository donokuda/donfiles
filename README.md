••• donfiles •••
================

*Guys, I also become cool if I do this, right?*

These are my dotfiles that I use for developing. Previously, I used to manually
sync my dotfiles first by hand, then by symlinking files from a git repo. While
the latter worked, it still took time to symlink everything up on a new computer.

The format for these dotfiles are taken from
**[@holman](https://github.com/holman/dotfiles)** and
**[@achiu's](https://github.com/achiu/dotfiles) dotfiles.

Let's get started!
------------------

First, clone this repo to your computer (preferably your HOME directory)...

```bash
$ cd ~
$ git clone https://github.com/donokuda/donfiles.git .donfiles
$ cd .donfiles
```

...Run the `bootstrap` script...

```bash
$ bash script/bootstrap
```

...Then init those git submodules!

```bash
$ git submodule init
$ git submodule update
```

