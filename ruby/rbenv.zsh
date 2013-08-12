if [[ -x rbenv ]]
then
  # Put rbenv in our PATH
  export PATH="$HOME/.rbenv/bin:$PATH"
  # and init
  eval "$(rbenv init -)"
fi
