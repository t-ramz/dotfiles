# t-ramz's dotfiles
## Automated Installation
### Clone Repo
```
$ git clone https://www.github.com/t-ramz/dotfiles.git your/directory/here
```
### Arch installer:
On Arch you can use the installer script:
```
$ ./archInstall.sh
```
## Manual Install
### Create symbolic links
- It is advised to use symbolic links to the repo in order to keep things up to date across devices
- Do this through ```$ ln -sv repo/dir/.dotfile ~/.dotfile```
### vim plugins
Install [Vundle](https://github.com/VundleVim/Vundle.vim)
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Install plugins Vundle manages
```
$ vim +PluginInstall +qall
```
### vim [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
Install the dependencies with your package manager:
- python3
- cmake
- build-essential

Navigate to ```~/.vim/bundle/youcompleteme```

Install YCM with ```$ python3 install.py --clangd-completer```
