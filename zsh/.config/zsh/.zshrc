export GNUPGHOME=$HOME/.config/gnupg

gpg-connect-agent updatestartuptty /bye >/dev/null
export GPG_TTY=$(tty)

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=($ZDOTDIR/completions $ZDOTDIR/functions $fpath)

autoload -Uz compinit promptinit
compinit
promptinit

prompt restore

setopt EXTENDED_HISTORY EXTENDED_GLOB

HISTFILE=$HOME/.tmp/zsh/history

for file in $ZDOTDIR/*.zsh(N); do
	source "$file"
done

for plugin in $ZDOTDIR/plugins/*/*.plugin.zsh(N); do
    source "$plugin"
done

typeset -Ux PATH path
path=(~/.local/bin /opt/homebrew/bin $path)

typeset -TUx INFOPATH infopath
infopath=(
    ~/.local/share/info
    /usr/local/share/info
    /opt/homebrew/share/info
    /usr/share/info
    $infopath)

export MANPAGER="bat -plman"
