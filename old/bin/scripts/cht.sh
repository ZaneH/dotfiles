#!/usr/bin/env bash
languages=$(echo "go js python ocaml" | tr ' ' '\n')
core_utils=$(echo "xargs find mv sed awk" | tr ' ' '\n')

selected=$(printf "$languages\n$core_utils" | fzf)
read -p "Search: " query

if printf $languages | grep -qs $selected; then
  tmux neww bash -c "curl cht.sh/$selected/$(echo $query | tr ' ' '+') & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl cht.sh/$selected~$(echo $query | tr ' ' '+') & while [ : ]; do sleep 1; done"
fi
