# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Colors
LIGHT_BLUE="\[\e[94m\]"
INVERT="\[\e[7m\]"
LIGHT_GRAY_DARK_GRAY="\[\e[37;100m\]"
RESET="\[\e[0m\]"

# Directory color settings
export CLICOLOR=1
export LSCOLORS=GxfxcxdxbxegedabagGcGd

# Get VirtualEnv
function set_venv() {
	if [[ $VIRTUAL_ENV != "" ]]
	then
		VENV=" (${VIRTUAL_ENV##*/})"
	else
		VENV=""
	fi
}

# Get git branch name
function set_git_branch_name() {
    if [[ $(git branch 2>/dev/null | grep '^*' | colrm 1 2) != "" ]]
    then 
        GIT=" [$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]"
    else
        GIT=""
    fi
}

# Get info per prompt
function set_prompt() {

    USERNAME="${INVERT} SHUTAS ${RESET}"
    DIRECTORY="${LIGHT_GRAY_DARK_GRAY} \W ${RESET}"

    set_venv
    set_git_branch_name

    PS1="${USERNAME}${DIRECTORY}${VENV}${GIT} $ "

}

PROMPT_COMMAND=set_prompt