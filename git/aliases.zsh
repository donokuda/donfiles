alias gl="git log --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset' --abbrev-commit"

# Alias `git` to `hub` if github's hub CLI is installed
# https://github.com/github/hub
if [[ -x hub ]]; then alias git='hub'; fi
