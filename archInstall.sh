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

# create arrays with list vars
dotList=($(find $(pwd) -iname '.*' -a ! -iname '.git'))
baseFileList=($(find $(pwd) -iname '.*' -a ! -iname '.git' -printf "%f\n"))

for i in "${!dotList[@]}"; do
  printf 'Dotfile %s found, file %s\n' "${dotList[i]}" "${baseFileList[i]}"
  ln -sv "${dotList[i]}" ~/"${baseFileList[i]}"
done

# install vundle and plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

# install YCM
python3 ~/.vim/bundle/youcompleteme/install.py --clangd-completer --cs-completer --go-completer --ts-completer --java-completer
