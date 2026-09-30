setopt EXTENDED_HISTORY EXTENDED_GLOB

typeset -U path PATH
path=(~/.local/bin $path)
export PATH

typeset -U infopath INFOPATH

export MANPAGER="bat -plman"
