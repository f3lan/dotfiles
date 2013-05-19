# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# Pathes
export PATH="$HOME/bin:$PATH"
export PATH="/sw/bin:$PATH"
export PATH=$PATH:/usr/local/mysql/bin
# Editor
export EDITOR="vim"
export CVSEDITOR="vim"
export SVN_EDITOR="vim"
# Colors
export LSCOLORS=ExFxCxDxBxegedabagacad
export CLICOLOR=1
export TERM=xterm-256color
# Encoding 
export LC_CTYPE="utf-8"
export LANG="en_US.UTF-8"
#Fortune
fortune
echo -e "\n\n"

## Configs
# If not running interactively, don't do anything
if [[ -n "$PS1" ]]; then
# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=3000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Git tab completion
source ~/.git-completion.bash



# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
    else
  color_prompt=
    fi
fi

# PS1='\[\033[1;34m\][\u@\h:\w]$\[\033[0;37m\]$(__git_ps1 "[%s]")\[\033[00m\] '
PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[1;32m\]\w\[\e[m\] \[\e[1;32m\]$(__git_ps1 "[%s]")\[\033[00m\] '


# if [ "$color_prompt" = yes ]; then
#   PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[1;32m\]\w\[\e[m\] \[\e[1;32m\]$(__git_ps1 "[%s]")\[\033[00m\] '
#   export PROMT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# else
#   PS1='\u@Jules[\W]$(__git_ps1 "(%s)"): '
#   export PROMT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \W\a\]$PS1"
    ;;
*)
    ;;
esac

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

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi 

fi 

#!/bin/sh

append_path () {
  input="$1"
  value="$2"
  if ! echo $input | /usr/bin/egrep -q "(^|:)$value($|:)" ; then
     if [ "$3" = "after" ] ; then
        echo $input:$value
     else
        echo $value:$input
     fi
  else
    echo $input
  fi
}

# append_plist_var() {
#   name="$1"
#   append_value="$2"
#   default_value="$3"
#   current_value="`defaults read $HOME/.MacOSX/environment ${name}`"
#   [ ! "$current_value" ] && current_value="$default_value"
#   new_value="`append_path "$current_value" "$append_value" after`"
#   defaults write $HOME/.MacOSX/environment "$name" "$new_value"
#   if [ "$current_value" == "$new_value" ]; then
#     echo "No change to $name in ~/.MacOSX/environment.plist"
#   else
#     echo "Variable $name in ~/.MacOSX/environment.plist changed from '$current_value' to '$new_value'"
#     echo "You will need to log out of your Mac OS X user account and log back in for changes to take effect."
#   fi
# }
pushd "$HOME"
popd
