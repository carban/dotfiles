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

alias more='less'

alias chth="sh ~/.config/qtile/change_theme_qtile.sh"

alias sudo="sudo "

alias docker="sudo docker"

alias cleanup="sudo apt autoremove && sudo apt autoclean"

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


######################################################

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Add sbin directories to PATH.  This is useful on systems that have sudo
echo $PATH | grep -Eq "(^|:)/sbin(:|)"     || PATH=$PATH:/sbin
echo $PATH | grep -Eq "(^|:)/usr/sbin(:|)" || PATH=$PATH:/usr/sbin

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\w\a\]$PS1"
    ;;
*)
    ;;
esac
