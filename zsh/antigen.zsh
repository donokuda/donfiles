# Configure where to put our Antigen bundles
# This doesn't work for something reason but leaving in for documentation.
# export ADOTDIR=$ZSH/zsh/bundle

# Load Antigen...
source $ZSH/zsh/submodules/antigen/antigen.zsh

# ...Declare our bundles...
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh plugins/bundler

# ...then apply them.
antigen apply
