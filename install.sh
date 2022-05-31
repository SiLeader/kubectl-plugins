#!/usr/bin/env bash

install_location="$HOME/.local/bin"

if [[ $# -ge 1 ]]; then
  install_location=$1
fi

echo "Install location: $install_location"

for f in `ls kubectl-*`; do
  echo "Copy: $f"
  cp "$f" "$install_location"
done

echo "If '$install_location' is not in PATH, please write the following command in .zshrc or .bashrc."
echo "export PATH=\"\$PATH:$install_location\""
