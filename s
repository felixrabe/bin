#!/usr/bin/env bashsh-0

set +o errexit

if [[ $# -eq 0 ]] ; then
  CMD_STR 'subl -w . &'
else
  CMD_STR 'subl -w '"$(QUOTED "$@")"' &'
fi

if [[ "$(uname -s)" = "Darwin" ]] ; then
  sleep 0.2
  tries=0
  maxtries=3
  while [[ $((tries++)) -lt $maxtries ]] ; do
    CMD osascript -e 'tell application "System Events" to tell application process "Sublime Text" to set position of first window to {0, 0}'
    if [[ $? -eq 0 ]] ; then
      break
    fi
    CMD sleep $tries
  done
fi

if false ; then  # must have been prehistoric workaround - Windows?
  CMD sleep 1.2
  CMD kill $!
fi
