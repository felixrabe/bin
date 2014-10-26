#!/usr/bin/env bashsh-0

if [[ $1 == --save* ]] ; then
  if [[ ! -f ./package.json ]] ; then
    CMD_STR 'echo {} > ./package.json'
  fi
fi

CMD npm install "$@"
if [[ -d ./.git ]] ; then
  CMD git add ./package.json
  CMD git commit -m "$ npm install $*"
fi
