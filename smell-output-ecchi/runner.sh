#!/usr/bin/env fish
if test -z "$argv"
  echo 'Requires argument to file path'
  exit 1
else
  set -gx eshpath $argv
end

set -gx eshtempdir (mktemp -d)
mkdir -p $eshtempdir/.config/fish
cat base.sh > $eshtempdir/.config/fish/config.fish

screen -S Ecchi-Runner env HOME=$eshtempdir fish $eshpath;printf '\33[A\33[K'
