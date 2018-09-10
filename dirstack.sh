#!/bin/bash

alias d="dirs -v"

alias dc='popd'
alias flip='pushd'

function cd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
}
