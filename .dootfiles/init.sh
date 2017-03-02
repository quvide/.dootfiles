#!/bin/sh

mkdir -p $HOME/.dootfiles/.git
echo "Created ~/.dootfiles/.git"

git clone --bare git@github.com:quvide/.dootfiles.git $HOME/.dootfiles/.git
echo "Cloned repository"

git --git-dir=$HOME/.dootfiles/.git --work-dir=$HOME checkout
echo "Checked out files to home directory"

git --git-dir=$HOME/.dootfiles/.git config --local status.showUntrackedFiles no
echo "Hid untracked files"

echo "..."
echo "Done!"
echo "The config alias is currently only defined for fish + omf so remember to use it."
