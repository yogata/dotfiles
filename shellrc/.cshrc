#echo "reading $HOME/.cshrc"


#[ COLOR ]######################################################################
setenv BLACK    "%{\e[01;30m%}"
setenv RED      "%{\e[01;31m%}"
setenv GREEN    "%{\e[01;32m%}"
setenv YELLOW   "%{\e[01;33m%}"
setenv BLUE     "%{\e[01;34m%}"
setenv PERPLE   "%{\e[01;35m%}"
setenv CYAN     "%{\e[01;36m%}"
setenv WHITE    "%{\e[01;37m%}"
setenv DEFAULT  "%{\e[00;37m%}"

################################################################################
#[ set ]########################################################################
################################################################################

set addsuffix           # add :: dir -> /, file -> space
#set afsuser            # use alter local user name for autologout
unset ampm              # use 12h unit am/pm format
#set autocorrect        # exec spell-word before comp
#set autoexpand         # exec epand-history b4 comp
set autolist            # list
set autologout = 300    # autologout after certain minuits
#set backslash_quote    # quote backslash
#set catalog            # use catalog message
#set cdpath = ~/        # search directory list when cant find under current dir
set color               # enable ls-F (ls --color=auto)
set colorcat            # enable color escape sequence for NLS message file
#set command            # consider "-c" flag
set complete
#set continue
#set correct
#set dextract
set dspmbyte = euc
set edit
#set ellipsis
#set fignore
set filec
#set histchars = !
#set histdup = prev
#set histfile = ~/.history
#set histlit
set history = 100
set ignoreeof
set implicitcd = verbose    # command = dir name -> cd
#set inputmode
#set killdup
#set killring
#set listflags = a          # add on. a -> ls-F = ls -aF
#set listjobs = long
#set listlinks
set listmax = 1000          # max args without ask whether list
set listmaxrows = 1000
set nobeep
set noclobber
set noding
#unset noglob
#unset nokanji
#unset nonomatch
#unset nostat
set notify
#unset promptchars
#set printexitvalue
set pushdtohome
#unset recexact
set rmstar
#set recoginize_only_executables
set savedirs = 100
set savehist = (1000 merge)
set symlinks = expand
#set verbose
set watch = (0 any any)
set who = "%n has %a %l from %M."
#set wordchars = `*?_-.[]~='
set wordchars =
limit coredumpsize 0

#[ path ]#######################################################################
set path = ()
set path = ($path ~/bin)
set path = ($path /opt/local/bin /opt/local/sbin)
set path = ($path /{usr/{local/,X11R6/,},}{,s}bin /usr/games)
set path = ($path /usr/local/{pgsql,apache2,java}/{,s}bin)
set path = ($path /usr/lib/courier-imap/{{,s}bin,libexec})
set path = ($path /usr/ucb /usr/ccs/bin)
set path = ($path /usr/java/jre1.5.0_06/bin)
set path = ($path /usr/local/fml/)
set path = ($path /usr/local/kde4/bin/)
set manpath = ()
set manpath = ($manpath /usr/share/man /usr/local/man /usr/X11R6/man)
set manpath = ($manpath /usr/local/apache2/man /usr/share/openssl/man)
set manpath = ($manpath /usr/lib/perl5/5.8.8/{,perl}man)
set manpath = ($manpath /opt/local/man)
set jmanpath = ($manpath /usr/share/man/ja)


#[ time ]#######################################################################
set time=(8 "\
    Time spent in user mode   (CPU seconds) : %Us\
    Time spent in kernel mode (CPU seconds) : %Ss\
    Total time                              : %Es\
    CPU utilisation (percentage)            : %P\
    Times the process was swapped           : %W\
    Times of major page faults              : %F\
    Times of minor page faults              : %R")

#[ prompt ]#####################################################################
if ( $uid == 0) then
    set prompt  = "${RED}${user}${DEFAULT}@%m(%h)%# "
else
    set prompt  = "${GREEN}${user}${DEFAULT}@%m(%h)%# "
endif
set rprompt = "${GREEN}[%~]${DEFAULT}@%t"



################################################################################
#[ setenv ]#####################################################################
################################################################################

setenv PERL_BADLANG 0
if ( $OSTYPE == FreeBSD ) then
  setenv LANG ja_JP.eucJP
else
  setenv LANG ja_JP.UTF-8
endif
setenv EDITOR vim
setenv LESS "-cegX"
setenv PAGER less
#setenv QTDIR /usr/local/qt
setenv XMODIFIERS "@im=scim"
setenv GTK_IM_MODULE "scim"
#setenv XMODIFIERS "@im=uim-anthy"
#setenv GTK_IM_MODULE "uim-anthy"
#setenv JAVA_HOME /usr/local/java
#setenv CLASSPATH /usr/local/java/lib:.
#setenv ANT_HOME /usr/local/ant
setenv DISPLAY ":0.0"
setenv LSCOLORS "GxfxcxdxCxegedabagacad"
setenv LS_COLORS 'rs=0:di=01;36:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
if ($?PORTSDIR == 0) then
  setenv PORTSDIR /usr/ports
endif
if ($?PKG_DBDIR == 0) then
  setenv PKG_DBDIR /var/db/pkg
endif
if ( $MACHTYPE == i386 ) then
  setenv PACKAGES "/home/yasuhiko/work/servers/FreeBSD/pkg_$MACHTYPE"
endif



################################################################################
#[ bindkey ]####################################################################
################################################################################

bindkey -e
bindkey "^G" complete-word-fwd
bindkey "^R" i-search-back
bindkey "^W" backward-delete-word
bindkey -k down history-search-forward
bindkey -k up history-search-backward




################################################################################
#[ alias ]######################################################################
################################################################################

#[ generic ]####################################################################
alias   c        clear
alias   e        exit
alias   h        history
alias   make     gmake
alias   vi       vim
alias   rm      'rm -i'
alias   mv      'mv -i'
alias   cp      'cp -i'
alias   rr      'rm -rf'
alias   pwd     'echo $cwd'
alias   less    '\less --tab=4 --RAW-CONTROL-CHARS --no-init --LONG-PROMPT --ignore-case'
if ( $OSTYPE == linux ) then
alias  ls       '\ls -bF --color'
else
alias   ls      '\ls -wGF'
endif
alias   la      'ls -a'
alias   ll      'ls -al'
alias   lll     'ls -al|less -R'
alias   lsn     'ls -lh'
alias   lss     'ls -lhrS'
if ( $OSTYPE != solaris ) then
  alias   grep    'grep --color=auto'
endif
alias   emacs   'emacs -nw'
alias   mew     'emacs -f mew'
alias   lookup  'emacs -f lookup'
alias   howm    'emacs -f howm-menu'
alias   wiki    'emacs -f emacs-wiki-mode'
alias   vig     'vi /etc/group'
alias   vivim   'vi ~/.vimrc'
alias   vip     'vi ~/.plan'
alias   vics    'vi ~/.cshrc'
alias   vissh   'vi ~/.cshrc.ssh'
alias   vicl    'vi ~/.cshrc.local'
alias   viz     'vi ~/.zshrc'
alias   viza    'vi ~/.zshrc.alias'
alias   vize    'vi ~/.zshenv'
alias   vizc    'vi ~/.zshrc.completion'
alias   vizs    'vi ~/.zshrc.setopt'
alias   socs    'source ~/.cshrc'
alias   bsd     'unalias make; set path=(/{,usr/{,X11R6/,local/}}{,s}bin )'
alias   logs    'tail -f /var/log/{{auth,console,natd,postgress,samba,snort}.log,maillog,messages,security,cron,iplog} /usr/local/apache2/logs/{access,error,suexec}_log'
alias   alogs   'tail -f /var/log/all.log /usr/local/apache2/logs/{{access,error,suexec}_log}'
alias   bogoreg "find . -type f -exec sh -c 'cat {} | bogofilter -sv' ';'"
if  ( $TERM == xterm-color ) then
    alias   precmd  '/usr/bin/printf "\033]0;${USER}@`hostname `\007"'
else if ( $OSTYPE == solaris-color ) then
    alias   precmd  '/usr/bin/printf "\033]0;${USER}@`hostname -s`\007"'
endif
alias   ahome   "mount_nfs -P 192.168.2.1:/home /mnt/ark"
if ( $OSTYPE != solaris ) then
  alias   svn     "env LANG=ja_JP.eucJP svn"
endif
alias   screen  "env TERM=xterm screen"
alias   sudo    "sudo -E"
alias   portupgrade 'env PACKAGEROOT="" portupgrade'

#[ for typo ]###################################################################
alias  sl    ls
alias  telent  telnet
alias  gerp    grep

if ( -f ~/.cshrc.ssh ) then
    source ~/.cshrc.ssh
endif



################################################################################
#[ complete ]###################################################################
################################################################################
if ( $?tcsh ) then
  uncomplete  *
  complete  cd             'p/1/d/'
  complete  {un,}setenv    'p/1/e/'
  complete  {un,}set       'p/1/s/'
  complete  unalias        'p/1/a/'
  complete  man            'p/*/c/'
  complete  {which,where}  'p/1/c/'
  complete  {id,finger}    'p/*/u/'    
  complete  chown          'p/1/u/'
  complete  {write,talk}   'p/1/`finger | awk \{print\ \$1\} | tail +2 | sort -u`/'

  complete pkg_replace "p@*@D:$PKG_DBDIR@@"
  complete pkg_create "n@-b@D:$PKG_DBDIR@@"
  complete pkg_deinstall "p@*@D:$PKG_DBDIR@@"
  complete pkg_delete "p@*@D:$PKG_DBDIR@@"
  complete pkg_fetch 'p@*@`ls $PKG_DBDIR | sed "s,\(.*\)-.*,\1," `@@'
  complete pkg_info "p@*@D:$PKG_DBDIR@@"
  complete pkg_which "p@*@D:$PKG_DBDIR@@"
  complete pkg_check "p@*@D:$PKG_DBDIR@@"
  complete pkgdb "c@*@D:$PKG_DBDIR@@" "o@*@D:$PKG_DBDIR@@"
  complete portinstall "p@*@D:$PORTSDIR@"
  complete ports_glob "p@*@D:$PORTSDIR@"
  complete portupgrade "n@-o@D:$PORTSDIR@" "p@*@D:$PKG_DBDIR@@"
  complete portversion "p@*@D:$PKG_DBDIR@@"
  complete ./configure  'c/*=/f/' 'C@--*@`./configure --help | sed -n "s/.*\(--[-=A-Za-z]*\).*/\1/p" `@'
  complete sysctl 'n/*/`sysctl -Na`/'
  set  autocorrect
  set  correct
endif



if ( -f ~/.cshrc.local ) then
    source ~/.cshrc.local
endif


