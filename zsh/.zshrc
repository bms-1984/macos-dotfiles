gpg-connect-agent updatestartuptty /bye >/dev/null
export GPG_TTY=$(tty)

autoload -Uz compinit promptinit
compinit
promptinit

prompt restore

typeset -Ux PATH path
path=(~/.local/bin $path)
