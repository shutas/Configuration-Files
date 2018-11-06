# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Command line prompt settings
#export PS1="\e[92mshutas@MacBookPro\e[0m:\e[01;36m\W\e[0m$ "
#export PS1="\[\e[1;106m\] \w "
#export PS1="\[\e[30;101m\]\[\e[1m\] \W \[\e[0m\]\[\e[m\] $ "
#export PS1="\[\e[1;30;47m\] \W \[\e[0m\] $ "
#export PS1="\[\e[7m\] \w \[\e[0m\] $ "

# Colors
LIGHT_BLUE="\[\e[94m\]"
INVERT="\[\e[7m\]"
LIGHT_GRAY_DARK_GRAY="\[\e[37;100m\]"
RESET="\[\e[0m\]"

# Get Virtual Env
if [[ $VIRTUAL_ENV != "" ]]
    then
      # Strip out the path and just leave the env name
      VENV=" ${RED}(${VIRTUAL_ENV##*/})"
else
      # In case you don't have one activated
      VENV=""
fi

export PS1="${INVERT} SHUTAS ${RESET}${LIGHT_GRAY_DARK_GRAY} \W ${RESET} $ "

#export PS1="\[\e[7m\] SHUTAS \[\e[0m\]\[\e[37;100m\] \W \[\e[0m\] $ "
export CLICOLOR=1
export LSCOLORS=GxfxcxdxbxegedabagGcGd
