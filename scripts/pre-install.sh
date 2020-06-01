#!/bin/bash

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo 'Oh-my-zsh installed'
fi

# Check if asdf is installed
ASDFDIR="$HOME/.asdf"
if [ ! -d "$ASDFDIR" ]; then
  echo 'Installing asdf'
  /bin/sh -c "git clone https://github.com/asdf-vm/asdf.git $ASDFDIR"
  /bin/sh -c "cd $ASDFDIR"
  /bin/sh -c "git checkout "$(git describe --abbrev=0 --tags)""
else
  echo 'asdf installed'
fi

# Change default shell
# if [$0 != "zsh"|| $0 = "/usr/bin/zsh"]; then
#   echo 'Changing default shell to zsh'
#   chsh -s /bin/zsh
# else
#   echo 'Already using zsh'
# fi