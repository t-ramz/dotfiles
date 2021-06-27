#!/usr/bin/env bash

# Shell script for Arch Linux and Manjaro installation of dependencies and plugins

while IFS= read -r line; do
  if [[ $line == *"#"* || -z $line ]]
  then
    printf 'Getting: %s\n' "$line"
  else
    sudo pacman -S $line --noconfirm
  fi
done < archDeps.txt
