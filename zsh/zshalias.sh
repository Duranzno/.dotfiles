#!/usr/bin/env sh
alias ka="killall" \
	mkd="mkdir -pv" \
  proton="$ASDF_DIR/installs/python/3.8.3/bin/protonvpn" \
	mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)" \
	# calcurse="calcurse -D ~/.config/calcurse" \
	# magit="nvim -c MagitOnly" \
	p="sudo pacman" \
	SS="sudo systemctl" \
	f="$FILE" \
	g="git" \
	e="$EDITOR" \
	v="$EDITOR" \
	x="sxiv -ft *" \
	sdn="sudo shutdown -h now" \
	gua="git remote | xargs -L1 git push --all" \
	ls="ls -hN --color=auto --group-directories-first" \
  ll="ls -l" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	# yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'" \
	# yta="yt -x -f bestaudio/best" \
	# YT="youtube-viewer" \
	ref="shortcuts >/dev/null; source ~/.config/shortcutrc" \
	upc="sudo pacman -Syu; pkill -RTMIN+8 i3blocks" \
	lsp="pacman -Qett --color=always | less" \
	ffmpeg="ffmpeg -hide_banner" \
  vim="nvim" \
  la="ls -la" \
  gcl="git clone" \
  sudo='sudo ' \

command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d" # Use neovim for vim if present.

vf() { fzf | xargs -r -I % $EDITOR % ;}
alias protonvpn=sudo ./.asdf/installs/python/3.8.3/bin/protonvpn
alias sudo=sudo -E

