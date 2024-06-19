#!/bin/bash
#https://devpod.sh/docs/developing-in-workspaces/dotfiles-in-a-workspace
#https://github.com/89luca89/dotfiles/blob/master/install.sh

# "$(dirname "$0")/setup-idea-plugins"
goland_path="$HOME/.cache/JetBrains/RemoteDev/dist/goland/bin"
if [ -e "$goland_path" ]; then
  if ! which "$goland_path" &> /dev/null; then
    export PATH="$PATH:$goland_path"
  fi
  goland.sh installPlugins com.intellij.zh
fi
