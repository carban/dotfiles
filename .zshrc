# Created by newuser for 5.7.1

# Luke's config for the Zoomer Shell
neofetch
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="👽%F{gray}:%F{yellow}%1~%F{reset_color}$%F{gray}%b%f "

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

######### ALIAS #########

alias ls='ls --color=auto --group-directories-first'
alias l='ls'
alias la='l -Ah'
alias ll='l -lh'
alias lla='l -Alh'

alias gitc='git add . && git commit -m'

alias tsm='transmission-remote'

alias grep='grep --color=auto'

alias pdf='qpdfview'

alias lscams='v4l2-ctl --list-devices'

alias fakecam='sudo modprobe v4l2loopback devices=1 card_label="FakeCam" exclusive_caps=1 && lscams'

alias rmfakecam='sudo rmmod v4l2loopback && lscams'

alias ra='ranger'

#######################################################
