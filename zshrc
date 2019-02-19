export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

# Get nodenv working
# TODO: Deprecate nodenv in work computer and use `asdf` instead
export PATH="$HOME/.nodenv/shims:$PATH"

ASDFSH="$HOME/.asdf/asdf.sh"
if [[ -e $ASDFSH ]]; then
  source $ASDFSH
else
  echo "Not found: $ASDFSH"
fi

# zsh plugins (via antigen)
ANTIGENPATH="/usr/local/share/antigen/antigen.zsh"
if [[ -e $ANTIGENPATH ]]; then
  source $ANTIGENPATH

  antigen use oh-my-zsh

  antigen apply
else
  echo "Not found: $ANTIGENPATH"
fi

# Check if config file for Neovim exists
NVIMRC="$HOME/.config/nvim/init.vim"
if [[ ! -e $NVIMRC ]]; then
  echo "Cannot find a neovim config file. You're gonna have a bad time :("
  echo "  https://neovim.io/doc/user/nvim.html#nvim-from-vim"
fi
