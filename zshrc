PATH_TO_DOTFILES_SOURCE=$HOME/\.donfiles
#
# Load tmux on start with correct colors
# [[ $TERM != "screen" ]] && tmux && exit
alias tmux="TERM=screen-256color-bce tmux"

###########################################
# ANTIGEN
source $PATH_TO_DOTFILES_SOURCE/zsh/submodules/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

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

# RVM
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# export PATH="$PATH:/Users/donokuda/.rvm/gems/ruby-1.9.3-p194/bin:/Users/donokuda/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/donokuda/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/donokuda/.rvm/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/Users/donokuda/.rvm/bin"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Android SDK ish
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# For great LOVE!
alias love="/Applications/love.app/Contents/MacOS/love"

# Alias reattach-to-user-namespace
alias ratt="reattach-to-user-namespace"

# Remove all installed gems
alias removegems="for x in `gem list --no-versions`; do gem uninstall $x -a -x -I; done"

# alias `rbenv exec`
alias re="rbenv exec"

# alias `bundle exec`
alias be='bundle exec'

# Set to vi mode
set -o vi
#
# For rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
