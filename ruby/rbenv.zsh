if (( $+commands[rbenv] )); then
  # Put rbenv in our PATH
  export PATH="$HOME/.rbenv/bin:$PATH"
  # and init
  eval "$(rbenv init -)"
fi

export CC=/usr/bin/gcc # Set compiler to clang
