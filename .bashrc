#===================================
# common settings.
#===================================
# Color
export ESC="\033["
export BLACK="${ESC}30m\]"
export RED="${ESC}31m\]"
export GREEN="${ESC}32m\]"
export YELLOW="${ESC}33m\]"
export BLUE="${ESC}34m\]"
export PURPLE="${ESC}35m\]"
export LIGHTBLUE="${ESC}36m\]"
export DEFAULT="${ESC}0m\]"

# Vi mode
set -o vi

# Path
export PATH=${PATH}:~/.bin

# Alias
alias grep="grep --color=auto"
alias ll="clear;ls -lhA"
alias vi="vim"
alias c="clear"
alias cd="clear;cd"
alias mv="mv -i"
alias cp="cp -ir"
alias rm="rm -ir"
alias virc="vi ~/.bashrc"
alias sorc="source ~/.bashrc"
alias vivimrc="vi ~/.vimrc"

#===================================
# local settings.
#===================================
# Prompt
PROMPT_COLOR="${ESC}3`expr \`date +%s\` % 6 + 1`m"
PS1="${PROMPT_COLOR}[\u: \W]$ \[\033[0m\]"

# Alias
alias ls="clear;pwd;ls --color=auto -GF"

PROMPT_COMMAND="source ~/.bashrc"
