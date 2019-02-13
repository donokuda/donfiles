export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

if [[ -e /Users/donokuda/.asdf/asdf.sh ]]; then
  source /Users/donokuda/.asdf/asdf.sh
else
  echo "asdf not found"
fi

# zsh plugins (via antigen)
if [[ -e /usr/local/share/antigen/antigen.zsh ]]; then
  source /usr/local/share/antigen/antigen.zsh

  antigen use oh-my-zsh

  antigen apply
else
  echo "antigen not found"
fi


