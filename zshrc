PATH_TO_DOTFILES_SOURCE=$HOME/\.donfiles
#
# Load tmux on start with correct colors
# [[ $TERM != "screen" ]] && tmux && exit
alias tmux="TERM=screen-256color-bce tmux"

###########################################
# ANTIGEN
source $PATH_TO_DOTFILES_SOURCE/zsh/submodules/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh plugins/bundler

antigen apply
###########################################

# zsh prompt customized
autoload -U promptinit
promptinit

# Git Prompt
source $PATH_TO_DOTFILES_SOURCE/zsh/git-prompt/zshrc.sh
#
PROMPT='%n:%~ $(git_super_status) $ '
#prompt redhat #use redhat prompt theme until you learn to make your own!

# Command Completion
autoload -U compinit
compinit

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin'

# Android SDK ish
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# Set to vi mode
set -o vi
#
# For rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# For npm
export PATH="/usr/local/share/npm/bin:$PATH"
