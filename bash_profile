# setup virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Dev
source virtualenvwrapper_lazy.sh

PS1="\[\e[0;35m\]\w\$\[\e[0m\] "

# enable colors in terminal (for Mac OS)
alias ls='ls -G'
alias l='ls'

PATH="/Users/oleg/.cargo/bin:${PATH}"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

