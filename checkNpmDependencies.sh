#!/bin/sh

# check npm commands

npmCommands=(
 'a',
 'diff-so-fancy'
)

for i in "${npmCommands[@]}"
do 
  if command -v $i 2>/dev/null; then
    echo "* npm command check: $i .......... OK"
  else
    echo "* npm command check: $i .......... NOT FOUND, try: npm install -g $i"
  fi
done


echo '\n done.'
