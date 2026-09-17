source "${HOME}/.iterm2_shell_integration.zsh"

gpg-connect-agent updatestartuptty /bye >/dev/null
export GPG_TTY=$(tty)
