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

alias v='nvim'

#######################################################

#LS_COLORS=$LS_COLORS:'di=1;36' ; export LS_COLORS

gitPS1(){
  if [[ -d ".git/" ]]; then
    gitps1=$(git branch 2>/dev/null | grep '*')
    gitps1="${gitps1:+ (${gitps1/#\* /})}"
    echo "$gitps1"
  fi
}

export PATH=/home/carban/shell_scripts/mkscript:$PATH
export VISUAL=nvim;
export EDITOR=nvim;


# git Prompt
#PS1='🚀:\[\e[0;33m\]\W\[\e[0;32m\]$(gitPS1)\[\e[0;97m\]$ '
# Normal Prompt
PS1="🚀:\[\e[0;33m\]\W\[\e[0;97m\]$ "
