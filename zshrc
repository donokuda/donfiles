
export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
source /Users/donokuda/.asdf/asdf.sh

# zsh plugins (via antigen)
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen apply

