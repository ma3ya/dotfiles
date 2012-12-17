#===================================
# common settings.
#===================================
# Vi mode
set -o vi

# Path
[[ ${TERM} != screen ]] && export PATH=${HOME}/.bin:${PATH}:

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
alias vimrc="vi ~/.vimrc"

#===================================
# local settings.
#===================================
# Alias
alias ls="clear;pwd;ls -GF"
alias vertical="grep -o ."

# nodejs
if [[ ${TERM} != screen && -f ~/.nodebrew/nodebrew ]]; then
  export PATH=${HOME}/.nodebrew/current/bin:${PATH}
fi

PROMPT_COMMAND="[[ -f ~/.bash_ps ]] && source ~/.bash_ps"
