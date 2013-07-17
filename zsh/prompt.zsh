# zsh prompt customized
autoload -U promptinit
promptinit

PROMPT='%n:%~ $(git_super_status) $ '
