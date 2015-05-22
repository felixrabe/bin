#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  # unshift '.', see: https://lists.gnu.org/archive/html/help-bash/2012-02/msg00043.html
  set -- .
fi

if [[ $# -gt 1 || -d $1 ]] ; then
  CMD ls -alG "$@"
else
  CMD zless "$@"
fi
