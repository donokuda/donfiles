# Load Antigen...
source $PATH_TO_DOTFILES_SOURCE/zsh/submodules/antigen/antigen.zsh

# ...Declare our bundles...
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh plugins/bundler

# ...then apply them.
antigen apply
