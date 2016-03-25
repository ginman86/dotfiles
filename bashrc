export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source /usr/local/opt/nvm/nvm.sh

PATH=$PATH:~/Downloads/apache-maven-3.3.3/bin
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

# From Ubuntu and CentOS, with changes

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#colors aren't distracting, they improve contrast and make things easier to read.
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# ANSI color codes
CRS="\e[0m"  # reset
CHI="\e[1m"  # bright foreground
CUL="\e[4m"  # underline
CNV="\e[7m"  # inverse background and foreground
CFK="\e[30m" # foreground black
CFR="\e[31m" # foreground red
CFG="\e[32m" # foreground green
CFY="\e[33m" # foreground yellow
CFB="\e[34m" # foreground blue
CFM="\e[35m" # foreground magenta
CFC="\e[36m" # foreground cyan
CFW="\e[37m" # foreground white
CBK="\e[40m" # background black
CBR="\e[41m" # background red
CBG="\e[42m" # background green
CBY="\e[43m" # background yellow
CBB="\e[44m" # background blue
CBM="\e[45m" # background magenta
CBC="\e[46m" # background cyan
CBW="\e[47m" # background white

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ "$color_prompt" = yes ]; then
    #print date/time and fill line with '='
    PROMPT_COMMAND='echo -e "$CRS$CFR[$(date +"%F %T")]$(printf "%$((${COLUMNS}-22))s" | sed "s/ /=/g")~$CRS"'
    #prompt: color codes need to be enclosed by \[ \] so they won't be counted
    PS1="${debian_chroot:+\[$CHI$CFR\]($debian_chroot)}\[$CRS$CFG\]\u\[$CRS\]@\[$CHI$CFM\]\h\[$CRS\]:\[$CHI$CFB\]\w\[$CRS\]\$ "
else
    PROMPT_COMMAND='echo "[$(date +"%F %T")]$(printf "%$((${COLUMNS}-22))s" | sed "s/ /=/g")~"'
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'

# colors in GCC; this could be done with an alias that adds -fdiagnostics-color=auto, but older versions of gcc don't support it
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
