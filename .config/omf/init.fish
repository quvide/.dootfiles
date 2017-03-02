# keychain
eval (keychain --quiet --eval id_ed25519)

# $TERM madness
set TERM xterm-256color

# $EDITOR preferences
if type -q nvim
  alias vim nvim
  set EDITOR nvim
else if type -q vim
  set EDITOR vim
else if type -q nano
  set EDITOR nano
else
  echo "Warning: no sensible editor present on this system"
end

# https://news.ycombinator.com/item?id=11071754
alias config "/usr/bin/git --git-dir=$HOME/.dootfiles/ --work-tree=$HOME"
