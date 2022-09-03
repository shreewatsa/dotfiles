alias PING="echo PONG"

alias ..="cd .."
alias ...="cd ..."
alias c="clear"

# Aliases
alias ls="lsd"  # alias ls="ls --color"  # To access POSIX ls , type "\ls;" in the prompt.
alias lsl="lsd -lh" 
alias lsa="lsd -a" 
alias lsal="lsd -lha" 

# vim <(man $1);
# vman() { man $1 | nvim - } # Open man page in vim.
# vman(){
  # eval 'man $@ | nvim -MR +"set filetype=man" -'
  # eval 'man $@ | nvim -MR -'
# }
# export MANPAGER="nvim -c 'set ft=man' -"
export MANPAGER="nvim +Man!"
export MANWIDTH=999

alias ilabs="/home/shreewatsa/Documents/Leapfrog/Projects/i8labs/sass-web-api/venv/bin/python -m uvicorn i8Labs.main:create_app --reload"
alias venv=". venv/bin/activate"
TMUX_CONFIG="$HOME/.config/tmux/tmux.conf"

alias lg="lazygit"

# Git bare repo for dotfiles.
alias bare="git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias barels="bare ls-files --full-name"
alias barelsl="bare ls-tree --full-tree -r HEAD --name-only"  # Do not use this => bare log --pretty=format: --name-only --diff-filter=A | sort -;  
alias baretree="barelsl | tree -Ca --fromfile . | ${PAGER:-less};"  # View tracked files in a tree.
alias barefind='nvim $(barelsl | fzf | sed "s,^,$(bare rev-parse --show-toplevel)/,")'  # Open tracked file in nvim.

# alias vim="nvim"
alias notes="calcurse"	# note and appointment taking ncurses based app.
 
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"
alias tk="tmux kill-server"
alias tl="tmux ls"
alias tc="nvim $TMUX_CONFIG"

# Use ranger file manager to switch directories and bind it to ctrl-o
# alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"                                               
    fi
}
alias ranger="rangercd"
alias r="ranger"

gch(){ git checkout $(git branch | fzf | tr -d '[:space:]') }

# function ranger {
#	local IFS=$'\t\n'
#	local tempfile="$(mktemp -t tmp.XXXXXX)"
#	local ranger_cmd=(
#		command
#		ranger
#		--cmd="map Q chain shell echo %d > "$tempfile"; quitall"
#	)
#	
#	${ranger_cmd[@]} "$@"
#	if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
#		cd -- "$(cat "$tempfile")" || return
#	fi
#	command rm -f -- "$tempfile" 2>/dev/null
#}

alias confpolybar="vim ~/.config/polybar/config"

# alias ipp="curl ipinfo.io/ip"
alias brightness='_func(){ xrandr --output eDP-1 --brightness "$1"; }; _func'
#alias brightness='_func(){ echo "$1"; }; _func'
alias check_internet="ping 8.8.8.8"

alias hdmileft="xrandr --output HDMI-1-0 --left-of eDP-1 --auto"
alias hdmiright="xrandr --output HDMI-1-0 --right-of eDP-1 --auto"
alias hdmioff="xrandr --output HDMI-1-0 --off"

alias xsc="xclip -sel clip" # To copy piped outputs like $ pwd | xsc 

# confirm before overwriting something.
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Get top cpu and memory consuming processes.
alias psmem="ps aux | sort -nr -k 4 | head -5"
alias pscpu="ps aux | sort -nr -k 3 | head -5"

# systemd
alias list_systemctl="systemctl list-unit-files --state=enabled"


