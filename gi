#!/usr/bin/env bashsh-0

if [[ -d ./.git ]] ; then
  echo 'ERROR: Already has a Git repository, aborting.' >&2
  exit 1
fi

CMD git init
CMD touch README.md

# CMD_STR 'echo node_modules/ >> ./.gitignore'
# if [[ ! -f './package.json' ]] ; then
#   CMD_STR 'echo {} >> ./package.json'
# fi
# CMD git add ./.gitignore ./package.json
# CMD git commit -m 'Bare initial commit'
# CMD git tag init

"$DIR/gk"   # gitk --all &
"$DIR/s" .  # subl -w .
"$DIR/l"    # ls -al

# MSG 'Suggestions:  nis  nisd  ;  nrs  nrsd'
