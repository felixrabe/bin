#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  # unshift '.', see: https://lists.gnu.org/archive/html/help-bash/2012-02/msg00043.html
  set -- .
fi

if [[ $(uname -s) = Darwin ]] ; then
  color_flag=-G
else
  color_flag=--color=auto
fi

if [[ $# -eq 1 ]] ; then
  if [[ ! -d $1 ]] ; then
    if [[ $1 == *.gz ]] ; then
      CMD zless "$@"
    else
      CMD less "$@"
    fi
  else
    CMD ls -al $color_flag "$@"
  fi
else
  CMD ls -ald $color_flag "$@"
fi
