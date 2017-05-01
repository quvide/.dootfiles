# keychain
if type -q keychain
  eval (keychain --quiet --eval id_ed25519)
end

# $TERM madness
set -xg TERM xterm-256color
set -xg TERMINAL termite

# $EDITOR preferences
if type -q nvim
  alias vim nvim
  set -xg EDITOR nvim
else if type -q vim
  set -xg EDITOR vim
else if type -q nano
  set -xg EDITOR nano
else
  echo "Warning: no sensible editor present on this system"
end

# https://news.ycombinator.com/item?id=11071754
alias config "/usr/bin/git --git-dir=$HOME/.dootfiles/.git --work-tree=$HOME"

# $PATH
set -xg PATH $HOME/bin $HOME/.local/bin $HOME/.gem/ruby/2.4.0/bin $PATH
