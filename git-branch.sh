#!/bin/bash

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}


export PS1=$PS1"\$(git_branch) :::\n>_$ "
#export PS2="|\$$$"
export PS1="\n::: "$PS1
