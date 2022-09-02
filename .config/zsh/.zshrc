if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.config/zsh/oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel10k/powerlevel10k" # robbyrussell, jonathan, agnoster
# autoload -U colors && colors  # Enable colors and change prompt:
PROMPT_EOL_MARK='' # removes '%' symbol showing at the end of the shell output. 

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
HISTCONTROL=ignoredups
disable r #r acts like !! in zsh shell.

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line # Edit line in vim with ctrl-e:

# CASE_SENSITIVE="true" Uncomment the following line to use case-sensitive completion.
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode disabled  # disable automatic updates. Modes; auto/disabled/reminder.
# zstyle ':omz:update' frequency 13  # 13 means num of days to update periodically.

ENABLE_CORRECTION="true" # Uncomment the following line to enable command auto-correction.
DISABLE_UNTRACKED_FILES_DIRTY="true"  # zsh is faster if untracked files are ignored.
# ZSH_CUSTOM=/path/to/new-custom-folder # Would you like to use another custom folder than $ZSH/custom?

ZSH_AUTOSUGGEST_STRATEGY=(history completion)  # look after plugins in $ZSH/plugins/ and $ZSH_CUSTOM/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting) # web-search transfer tmux git

source $ZSH/oh-my-zsh.sh    # ~/.config/zsh/oh-my-zsh

bindkey -s '^f' 'ranger^M' # bindkey -s '^o' 'rangercd\n'
bindkey -s '^z' 'zi^M'
bindkey -s '^s' 'ncdu^M'

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey '^r' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

source $HOME/.config/commons/aliases.sh
PATH="$HOME/.config/commons/scripts:$HOME/.config/commons/scripts/dmenu:$PATH" # export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH

# Zoxide related config
export _ZO_ECHO='1'
export _ZO_MAXAGE=500
eval "$(zoxide init zsh)"

[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh  # run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
