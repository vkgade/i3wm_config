# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

source /etc/profile

export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

stty stop undef

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/home/v'}
export PATH="$HOME/"'.magento-cloud/bin':"$HOME/Documents/install/scid-4.7.0":"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

alias mgc="magento-cloud"
alias mgcp="magento-cloud -pr2nvpyhhp3iwc -eproduction"
alias mgcs="magento-cloud -pr2nvpyhhp3iwc -estaging"
alias mgce="magento-cloud -pr2nvpyhhp3iwc -eintegration"
alias gst="git status"
alias wgst="watch -n 2 git status"
alias gch="git checkout"

function path {
    dir=$(pwd)
    if [ -z "$1" ]; then
	echo "No path given in arg 1"
    else
	filepath=$(printf ${dir}/$1)
	if [ -e $filepath ]; then
	    echo $filepath
	else
	    echo "No file found: $filepath"
	fi
    fi
}
