#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  # unshift '.', see: https://lists.gnu.org/archive/html/help-bash/2012-02/msg00043.html
  set -- .
fi

if [[ $# -eq 1 ]] ; then
  if [[ ! -d $1 ]] ; then
    CMD zless "$@"
  else
    CMD ls -alG "$@"
  fi
else
  CMD ls -aldG "$@"
fi
