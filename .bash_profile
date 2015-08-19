# custom PS1.
export PS1='\[\e[36;1m\]\u\[\e[01;30m\]@\[\e[32;1m\]\h:\[\e[01;35m\]\w \$ \[\e[0m\]'

# man page with color
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# custom alias
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias l='ls $LS_OPTIONS -l'
alias ll='ls $LS_OPTIONS -lA'

alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
