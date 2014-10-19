#!/usr/bin/env bashsh-0

if [[ $# -eq 0 ]] ; then
  CMD_STR 'subl -w . &'
else
  CMD_STR 'subl -w '"$(printf "%q " "$@")"'&'
fi

CMD sleep 1.5
CMD kill $!
