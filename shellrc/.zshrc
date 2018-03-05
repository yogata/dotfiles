#
# $HOME/.zshrc
#

echo "reading $HOME/.zshrc"

# color settings
export LSCOLORS='GxfxcxdxCxegedabagacad'
export LS_COLORS='rs=0:di=01;36:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
export ZLS_COLORS="$LS_COLORS"
[ -w $HOME ] && ZDOTDIR=$HOME
ZDOTDIR=${ZDOTDIR:-$HOME}
export CCACHE_DIR=$ZDOTDIR/.ccache
#autoload colors
#colors

autoload -U compinit        # load completion system
compinit -C                 # dump compinit in .zcompdump
compinit -d $ZDOTDIR/.zcompdump



################################################################################
#[ Zsh Parameters ]#############################################################
################################################################################

#[ History ]####################################################################
export HISTFILE=$HOME/.zsh-history
export HISTSIZE=10000				# size of history
export LISTMAX=10000				#
export SAVEHIST=10000       # maximum of history events to be save


#[ Time ]#######################################################################
export REPORTTIME=10        # report time if execution exceeds amount of seconds
export TIMEFMT=" \
    The name of this job.             :%J
    CPU seconds spent in user mode.   :%U
    CPU seconds spent in kernel mode. :%S
    Elapsed time in seconds.          :%E
    The  CPU percentage.              :%P"


#[ Watch ]######################################################################
export WATCH=all
export LOGCHECK=0
export WATCHFMT="%n has %a %l from %M"


#[ PATH ]#######################################################################
mypath=(~/bin /{usr/{local/,X11R6/,},}{,s}bin /opt/local/{,s}bin 
/usr/local/{pgsql,apache2,java}/{,s}bin /usr/ucb /usr/ccs/bin /usr/texbin/)
unset path
for check_dir in $mypath; do
    if [ -d $check_pathdir ]; then
        PATH=$PATH:$check_dir
    fi
done


#[ prompt ]#####################################################################
local BLUE=$'%{\e[1;30m%}'
local RED=$'%{\e[1;31m%}'
local GREEN=$'%{\e[1;32m%}'
local YELLOW=$'%{\e[1;33m%}'
local PURPLE=$'%{\e[1;34m%}'
local CYAN=$'%{\e[1;35m%}'
local SKYBLUE=$'%{\e[1;36m%}'
local DEFAULT=$'%{\e[1;m%}'
if [ $UID = 0 ]; then
    export PROMPT="${RED}${USER}${DEFAULT}@%m${SKYBLUE}(%h)%#${DEFAULT}  "
else
    export PROMPT="${GREEN}${USER}${DEFAULT}@%m${SKYBLUE}(%h)%#${DEFAULT}  "
fi
export RPROMPT="${GREEN}[%~]${DEFAULT}@%t"

#local A=$'%{\e[0;36m%}'
#local B=$'%{\e[1;36m%}'
#local C=$'%{\e[2;36m%}'
#local D=$'%{\e[3;36m%}'
#local E=$'%{\e[4;36m%}'
#local F=$'%{\e[5;36m%}'
#local G=$'%{\e[6;36m%}'
#local H=$'%{\e[7;36m%}'
#export PROMPT="${A}hoge0000 ${B}hoge0001 ${C}hoge0010 ${D}hoge0011 ${E}hoge0100 ${F}hoge0101 ${G}hoge0110 ${H}hoge0111%#"



#[ etc ]########################################################################

### general settings
export WORDCHARS="*?[]~=&;!#$%^(){}<>"
export NULLCMD=':'                 # use cat for > null commands
export READNULLCMD='less'          # use present pager for < null commands
export LESSOPEN='| /opt/local/bin/lesspipe.sh %s'

### package
if [ "$MACHTYPE" = i386 ]; then
  export PACKAGES="/home/yasuhiko/work/servers/FreeBSD/pkg_$MACHTYPE"
fi

### env specification
# vim/vi
if [ -f "`which vim`" ]; then
  export EDITOR="vim"
  export SVN_EDITOR="vim --noplugin"
elif [ -f "`which vi`" ]; then
  export EDITOR="vi"
else
  echo "vim/vi not found."
fi

# lv/jless/less
if [ "$OSTYPE < darwin" ]; then
  cmd="whereis"
else
  opt="whereis -b"
fi
if [ -f "`${cmd} lv`" ]; then
  export PAGER="lv"
elif [ -f "`${cmd} jless`" ]; then
  export PAGER="jless"
elif [ -f "`${cmd} less`" ]; then
  export PAGER="less"
else
  echo "lv/jless/less not found."
fi

# ostype specification
case "${OSTYPE}" in
FreeBSD)
  export LANG=ja_JP.eucJP
  ;;
darwin*)
  export LANG=ja_JP.UTF-8
  ;;
esac



################################################################################
#[ Bindkey ]####################################################################
################################################################################

bindkey -e                  # emacs-like key bind
#bindkey -v                  # vi-like key bind
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward



################################################################################
#[ Completion ]#################################################################
################################################################################

if [ -f $HOME/.zshrc.completion ]; then
    source $HOME/.zshrc.completion
    alias vic='vi $HOME/.zshrc.completion'
    alias soc='source $HOME/.zshrc.completion'
fi



################################################################################
#[ Zsh Options ]################################################################
################################################################################

if [ -f $HOME/.zshrc.setopt ]; then
    source $HOME/.zshrc.setopt
    alias vis='vi $HOME/.zshrc.setopt'
    alias sos='source $HOME/.zshrc.setopt'
fi



################################################################################
#[ Alias ]######################################################################
################################################################################

if [ -f $HOME/.zshrc.alias ]; then
    source $HOME/.zshrc.alias
    alias via='vi $HOME/.zshrc.alias'
    alias soa='source $HOME/.zshrc.alias'
fi


################################################################################
#[ ssh ]########################################################################
################################################################################

if [ -f $HOME/.zshrc.ssh ]; then
    source $HOME/.zshrc.ssh
    alias vissh='vi $HOME/.zshrc.ssh'
    alias sossh='source $HOME/.zshrc.ssh'
fi


################################################################################
#[ local settings ]#############################################################
################################################################################

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
    alias vizl='vi $HOME/.zshrc.local'
    alias sol='source $HOME/.zshrc.local'
fi



################################################################################
#[ etc ]########################################################################
################################################################################

if [ "$TERM" = "screen" ]; then
  preexec() {
    # see [zsh-workers:13180]
    # http://www.zsh.org/mla/workers/2000/msg03993.html
    emulate -L zsh
    local -a cmd; cmd=(${(z)2})
    echo -n "k$cmd[1]:t\\"
  }
fi
#precmd() {
#  echo -ne "\033]0;$(whoami)@`hostname -s`\007"
#  echo -ne "\033]0;${HOST}\007"
#}

# using ssh-agent in screen
if [ "$SSH_AUTH_SOCK" -a "$SSH_AUTH_SOCK" != "$HOME/.ssh/auth_sock" -a -f "$SSH_AUTH_SOCK" ]; then
    ln -fs $SSH_AUTH_SOCK $HOME/.ssh/auth_sock
    export SSH_AUTH_SOCK=$HOME/.ssh/auth_sock
fi
