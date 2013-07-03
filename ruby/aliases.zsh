# Remove all installed gems
alias removegems="for x in `gem list --no-versions`; do gem uninstall $x -a -x -I; done"

# alias `rbenv exec`
alias re="rbenv exec"

# alias `bundle exec`
alias be='bundle exec'

