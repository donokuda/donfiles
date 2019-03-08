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

# zsh plugins (via antibody)
source <(antibody init)

antibody bundle robbyrussell/oh-my-zsh
antibody bundle robbyrussell/oh-my-zsh path:plugins/jsontools 
antibody bundle denysdovhan/spaceship-prompt

# Check if config file for Neovim exists
NVIMRC="$HOME/.config/nvim/init.vim"
if [[ ! -e $NVIMRC ]]; then
  echo "Cannot find a neovim config file. You're gonna have a bad time :("
  echo "  https://neovim.io/doc/user/nvim.html#nvim-from-vim"
fi

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# For Go
export GOPATH=$HOME/code
export PATH=$PATH:$GOPATH/bin

alias cwd='pwd | pbcopy'
alias gti=git

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/donokuda/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/donokuda/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh