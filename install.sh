#!/bin/bash
#dotfiles

# "$(dirname "$0")/setup-idea-plugins"
goland_path="$HOME/.cache/JetBrains/RemoteDev/dist/goland/bin"
if [ -e "$goland_path" ]; then
  if ! which "$goland_path" &> /dev/null; then
    export PATH="$PATH:$goland_path"
  fi
  goland.sh installPlugins com.intellij.zh
  echo "存在goland" > "$HOME/a.txt"
else
  echo "不存在goland" > "$HOME/a.txt"
fi
