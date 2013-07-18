••• donfiles •••
================

*Guys, I also become cool if I do this, right?*

These are my dotfiles that I use for developing. When it comes to developing
with multiple computers, configurations are often cumbersome to keep in sync.
This is an attempt to create a consistent setup between the different computers
that I use.

Much of the formatting for these dotfiles are taken from
[@holman](https://github.com/holman/dotfiles) and
[@achiu's](https://github.com/achiu/dotfiles) dotfiles; primarily the directory
structure and the bootstrap script. However, I try to take advantage of package
managers for plugins such as [Antigen](//github.com/zsh-users/antigen) (for
zsh) and [Vundle](//github.com/gmarik/vundle) (for vim.) Also, I use
`.donfiles/` as the folder name rather than `.dotfiles/` because I'm so clever.
:clap: :clap: :clap:

Let's get started!
------------------

First, clone this repo to your computer (preferably your HOME directory)...

```bash
$ git clone https://github.com/donokuda/donfiles.git ~/.donfiles
$ cd ~/.donfiles
```

...Run the `bootstrap` script...

```bash
$ bash script/bootstrap
```

...init those git submodules...

```bash
$ git submodule init
$ git submodule update
```
...then install vim plugins with Vundle!

```bash
$ vim +BundleInstall +qall
```
When you run `zsh`, Antigen will download and install all zsh plugins.

What's next?
------------------

There are a few things I still need to do:

- Do not hardcode the '.donfiles' directory
- Fix out of the box issues with zsh git-prompt plugin
- Deprecate as many git submodules as needed (looking at you, git-prompt).
- Have antigen install inside `~/.donfiles/zsh/antigen` instead of
  `~/.antigen` then .gitignore the bundles (this is already done with Vundle)
- Fix `command not found: rbenv` error on computers without rbenv
