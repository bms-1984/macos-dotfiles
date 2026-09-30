setopt EXTENDED_HISTORY EXTENDED_GLOB

typeset -TUx INFOPATH infopath
infopath=(
	~/.local/share/info
	/usr/local/share/info
	/opt/homebrew/share/info
	/usr/share/info
	$infopath)

export MANPAGER="bat -plman"
