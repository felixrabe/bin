#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  CMD_STR 'subl -w . &'
else
  CMD_STR 'subl -w '"$(QUOTED "$@")"' &'
fi

CMD sleep 2
CMD kill $!
