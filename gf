#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  CMD git fetch --all --prune
else
  CMD git fetch --prune "$@"
fi
